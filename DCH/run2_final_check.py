import os
import csv

basedir = "/eos/user/a/atahmad/run2_hadd"
csvfile = os.path.join(basedir, "run2_filelist.csv")

def classify(fname):
    if fname.endswith("_2016.root"):
        if fname.startswith(("SingleElectron", "SingleMuon")):
            return "data"
        else:
            return "mc_2016"
    if fname.endswith("_2017.root"):
        if fname.startswith(("SingleElectron", "SingleMuon")):
            return "data"
        else:
            return "mc_2017"
    if fname.endswith("_2018.root"):
        if fname.startswith(("SingleMuon", "EGamma")):
            return "data"
        else:
            return "mc_2018"
    return None

missing = []
present = []

with open(csvfile, "r") as f:
    reader = csv.reader(f)
    for row in reader:
        if not row:
            continue
        fname = row[0].strip()
        ftype = classify(fname)
        if not ftype:
            print(f"Unclassified file: {fname}")
            continue
        fpath = os.path.join(basedir, ftype, fname)
        if os.path.exists(fpath):
            present.append(fname)
        else:
            missing.append(fname)

print(f"\nChecked {len(present)+len(missing)} files.")
print(f"Found:   {len(present)}")
print(f"Missing: {len(missing)}")

if missing:
    print("\nMissing files:")
    for m in missing:
        print("   ", m)
