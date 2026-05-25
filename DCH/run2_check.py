import os
import ROOT
import csv
import subprocess
import argparse
from collections import defaultdict

storage_root = "/eos/user/a/atahmad/run2_skims"

# files = {
#     ("MC", "2016"): "MC_samples_2016UL.csv",
#     ("MC", "2017"): "MC_samples_2017UL.csv",
#     ("MC", "2018"): "MC_samples_2018UL.csv",
#     ("Data", "2016"): "Data_2016UL.csv",
#     ("Data", "2017"): "Data_2017UL.csv",
#     ("Data", "2018"): "Data_2018UL.csv",
# }

files = {
    ("MC", "2016"): "MC_samples_2016ULpreVFP.csv"
}

parser = argparse.ArgumentParser(description="Verify outputs only")
parser.add_argument("--year", choices=["2016", "2017", "2018"], help="Process only a specific year")
parser.add_argument("--type", choices=["MC", "Data"], help="Process only MC or Data")
args = parser.parse_args()

def is_root_file_valid(file_path):
    if not os.path.exists(file_path):
        return False
    try:
        root_file = ROOT.TFile.Open(file_path, "READ")
        if not root_file or root_file.IsZombie() or root_file.TestBit(ROOT.TFile.kRecovered):
            return False
        if not root_file.GetListOfKeys() or not root_file.Get("Events"):
            return False
        root_file.Close()
        return True
    except Exception:
        return False

def get_root_files_from_das(dataset):
    cmd = ["dasgoclient", "-query", f"file dataset={dataset}"]
    result = subprocess.run(cmd, stdout=subprocess.PIPE, text=True)
    return [line.strip() for line in result.stdout.splitlines() if line.strip()]

def verify_outputs():
    all_good_files = []
    all_bad_files = []

    for (t, y), csv_file in files.items():
        if args.year and y != args.year:
            continue
        if args.type and t != args.type:
            continue

        storage_base = f"{storage_root}/{t}_{y}"

        with open(csv_file, "r") as f:
            reader = csv.reader(f)
            rows = [row for row in reader if len(row) >= 2]

        total_counts = defaultdict(int)
        for row in rows:
            if row[0].strip() and not row[0].startswith("#"):
                total_counts[row[0].strip()] += 1

        nickname_counts = defaultdict(int)

        for row in rows:
            nickname = row[0].strip()
            dataset = row[-1].strip()

            if not nickname or nickname.startswith("#"):
                continue

            nickname_counts[nickname] += 1
            if total_counts[nickname] > 1:
                nickname_final = f"{nickname}_part{nickname_counts[nickname]}"
            else:
                nickname_final = nickname

            cuts = f"{nickname_final}_loose"
            storage_path = f"{storage_base}/{cuts}/"

            expected_files = get_root_files_from_das(dataset)
            failed_files = []
            good, bad = 0, 0

            for rf in expected_files:
                output_file = os.path.join(storage_path, os.path.basename(rf))
                if is_root_file_valid(output_file):
                    all_good_files.append(output_file)
                    good += 1
                else:
                    all_bad_files.append(output_file)
                    failed_files.append(output_file)
                    bad += 1

            print(f"\nSample: {nickname_final} ({t} {y})")
            print(f"   Good files: {good}/{len(expected_files)}")
            if bad > 0:
                print(f"   Bad files: {bad}")
                for b in failed_files:
                    print(f"      {b}")

    with open("good_files.txt", "w") as gf:
        gf.write("\n".join(all_good_files))
    with open("bad_files.txt", "w") as bf:
        bf.write("\n".join(all_bad_files))

    print(f"\nOverall summary:")
    print(f"   Good files: {len(all_good_files)}")
    print(f"   Bad/missing files: {len(all_bad_files)}")

if __name__ == "__main__":
    verify_outputs()
