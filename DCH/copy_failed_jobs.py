import os
import shutil

failed_root = "/eos/user/a/atahmad/failed_jobs"
target_root = "/eos/user/a/atahmad/run2_skims"

years = ["2016", "2017", "2018"]

for year in years:
    mc_dir = os.path.join(failed_root, year, "MC")
    if not os.path.exists(mc_dir):
        continue

    for sample in os.listdir(mc_dir):
        sample_path = os.path.join(mc_dir, sample, "output")
        if not os.path.isdir(sample_path):
            continue

        target_dir = os.path.join(target_root, f"MC_{year}", f"{sample}_loose")
        os.makedirs(target_dir, exist_ok=True)

        print(f"\nCopying {sample} ({year})")
        for f in os.listdir(sample_path):
            src = os.path.join(sample_path, f)
            dst = os.path.join(target_dir, f)
            print(f"  {src} -> {dst}")
            shutil.copy2(src, dst)
