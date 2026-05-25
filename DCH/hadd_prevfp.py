import os
import csv
import subprocess
import ROOT
from multiprocessing import Pool

input_csv = "MC_samples_2016ULpreVFP.csv"

input_base  = "/eos/user/a/atahmad/run2_skims/MC_2016"
output_base = "/eos/user/a/atahmad/run2_hadd/mc_2016_prevfp"

os.makedirs(output_base, exist_ok=True)

N_WORKERS = 8
CHUNK_SIZE = 20


def is_root_file_valid(file_path):
    try:
        f = ROOT.TFile.Open(file_path)
        if not f or f.IsZombie() or not f.Get("Events"):
            return False
        f.Close()
        return True
    except:
        return False


def chunk_list(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i:i+n]


def process_sample(args):
    idx, total, nickname = args

    print(f"\n[{idx}/{total}] 📦 {nickname}")

    part_folders = sorted([
        os.path.join(input_base, f)
        for f in os.listdir(input_base)
        if f.startswith(f"{nickname}_part") and f.endswith("_loose")
    ])

    loose_folder = os.path.join(input_base, f"{nickname}_loose")
    if os.path.exists(loose_folder):
        part_folders.append(loose_folder)

    if not part_folders:
        print("   ❌ No matching folders found")
        return ("missing", nickname)

    for folder in part_folders:
        part_name = os.path.basename(folder).replace("_loose", "")
        part_output = os.path.join(output_base, f"{part_name}_2016.root")

        if os.path.exists(part_output) and is_root_file_valid(part_output):
            print(f"   ⏭️ {part_name} already done → skipping")
            continue

        files = [
            os.path.join(folder, f)
            for f in os.listdir(folder)
            if f.endswith(".root")
        ]

        if not files:
            continue

        valid = [f for f in files if is_root_file_valid(f)]

        if len(valid) != len(files):
            print("   ⚠️ corrupted files detected")
            return ("bad", nickname)

        print(f"   📂 {part_name}: {len(valid)} files")

        tmp_files = []
        chunks = list(chunk_list(valid, CHUNK_SIZE))

        for i, chunk in enumerate(chunks):
            tmp = os.path.join(output_base, f"{part_name}.tmp{i}.root")
            print(f"   🔹 {part_name} chunk {i+1}/{len(chunks)}")
            cmd = ["hadd", "-f", tmp] + chunk
            subprocess.run(cmd, stdout=None, stderr=None)
            if not os.path.exists(tmp):
                return ("bad", nickname)
            tmp_files.append(tmp)

        subprocess.run(["hadd", "-f", part_output] + tmp_files, stdout=None, stderr=None)

        for t in tmp_files:
            try:
                os.remove(t)
            except FileNotFoundError:
                pass

    print("   🎉 All parts processed")
    return ("ok", nickname)


print("\n🚀 FAST HADD (parallel + chunked)\n")

rows = []
with open(input_csv) as f:
    reader = csv.reader(f)
    for row in reader:
        if row and not row[0].startswith("#"):
            rows.append(row[0].strip())

tasks = [(i+1, len(rows), name) for i, name in enumerate(rows)]

with Pool(N_WORKERS) as p:
    results = p.map(process_sample, tasks)

bad = [n for s, n in results if s == "bad"]
missing = [n for s, n in results if s == "missing"]

print("\n====================")
print("📊 SUMMARY")
print("====================")

print(f"Total samples: {len(rows)}")
print(f"Bad: {len(bad)}")
print(f"Missing: {len(missing)}")

if bad:
    print("\n❌ Bad samples:")
    for b in bad:
        print(" ", b)

if missing:
    print("\n⚠️ Missing samples:")
    for m in missing:
        print(" ", m)

print("\n✅ Done\n")