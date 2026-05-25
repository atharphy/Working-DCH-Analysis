import subprocess
import csv

input_csv  = "MC_samples_2016UL_preVFP.csv"
output_csv = "MC_samples_2016UL_preVFP_FIXED.csv"


def get_files(dataset):
    try:
        cmd = ["dasgoclient", "-query", f"file dataset={dataset}"]
        result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

        if result.returncode != 0:
            return None

        files = [f for f in result.stdout.splitlines() if f.strip()]
        return files

    except Exception:
        return None


def try_versions(dataset):
    versions = ["v1", "v2", "v3"]

    if dataset.endswith("/NANOAODSIM"):
        base = dataset[:-len("/NANOAODSIM")]
        suffix = "/NANOAODSIM"
    else:
        base = dataset
        suffix = ""

    if "-v" in base:
        base_nover = base.rsplit("-v", 1)[0]
    else:
        base_nover = base

    for v in versions:
        new_dataset = f"{base_nover}-{v}{suffix}"

        files = get_files(new_dataset)

        if files and len(files) > 0:
            return new_dataset, len(files)

    return None, 0


print("\n🔧 Fixing datasets (v1 → v2 → v3)...\n")

updated_rows = []

with open(input_csv, "r") as f:
    reader = csv.reader(f)

    for row in reader:
        if not row or row[0].startswith("#"):
            updated_rows.append(row)
            continue

        nickname = row[0].strip()
        dataset  = row[-1].strip()

        fixed_dataset, nfiles = try_versions(dataset)

        if fixed_dataset:
            print(f"{nickname:<35} : ✅ {nfiles} files → using {fixed_dataset}")
            row[-1] = fixed_dataset
        else:
            print(f"{nickname:<35} : ❌ NO VALID VERSION FOUND")

        updated_rows.append(row)

with open(output_csv, "w") as f:
    writer = csv.writer(f)
    writer.writerows(updated_rows)

print(f"\n📄 Fixed CSV saved as: {output_csv}")