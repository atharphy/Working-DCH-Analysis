import os
import argparse
import ROOT
import subprocess
import csv
from collections import defaultdict

parser = argparse.ArgumentParser(description="Generate Condor job submission scripts from CSV datasets.")
parser.add_argument("-cut", type=str, default="False", help="Set to 'True' for tight cuts, 'False' for loose cuts")
parser.add_argument("-year", type=str, choices=["2016", "2017", "2018"], help="Year to process (2016, 2017, 2018)")
parser.add_argument("-type", type=str, choices=["MC", "Data"], help="Dataset type to process (MC or Data)")
parser.add_argument("--sample", type=str, help="Only run over this specific sample nickname")
args = parser.parse_args()

tight_selection = args.cut

cmssw = os.getenv("CMSSW_BASE") + "/src/"
workpath = "DCH-framework/DCH/"
proxy = os.getenv("X509_USER_PROXY")
storage_root = "/eos/user/a/atahmad/run2_skims"

def is_root_file_valid(file_path):
    if not os.path.exists(file_path):
        return False
    try:
        root_file = ROOT.TFile.Open(file_path, "READ")
        if not root_file or root_file.IsZombie() or root_file.TestBit(ROOT.TFile.kRecovered):
            root_file.Close()
            return False
        if not root_file.GetListOfKeys() or not root_file.Get("Events"):
            root_file.Close()
            return False
        root_file.Close()
        return True
    except Exception:
        return False

def get_root_files_from_das(dataset):
    cmd = ["dasgoclient", "-query", f"file dataset={dataset}"]
    result = subprocess.run(cmd, stdout=subprocess.PIPE, text=True)
    files = [line.strip() for line in result.stdout.splitlines() if line.strip()]
    return files

def process_from_csv(csv_file, mc_flag, year, sample_filter=None):
    job_prefix = "MC_cuts" if mc_flag else "data_cuts"
    storage_base = f"{storage_root}/{'MC' if mc_flag else 'Data'}_{year}"

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
            print(f"Skipping row: {row}")
            continue

        # filter by sample if requested
        if sample_filter and nickname != sample_filter:
            continue

        nickname_counts[nickname] += 1
        if total_counts[nickname] > 1:
            nickname_final = f"{nickname}_part{nickname_counts[nickname]}"
        else:
            nickname_final = nickname

        print(f">>> Querying DAS for dataset: {dataset}")
        root_files = get_root_files_from_das(dataset)
        if not root_files:
            print(f"[WARNING] No files found in DAS for {dataset}")
            continue

        cuts = f"{nickname_final}_{'tight' if tight_selection == 'True' else 'loose'}"
        storage_path = f"{storage_base}/{cuts}/"
        job_dir = os.path.join(cmssw, workpath, f"jobs/{year}/{'MC' if mc_flag else 'Data'}/{cuts}")

        os.makedirs(job_dir, exist_ok=True)
        os.makedirs(storage_path, exist_ok=True)

        readme_file = os.path.join(storage_path, "README.txt")
        with open(readme_file, "w") as readme:
            readme.write(",".join(row) + "\n")

        script_filename = os.path.join(job_dir, "condorjob.sh")
        condor_filename = os.path.join(job_dir, "condorjob.sub")
        valid_jobs = []

        with open(script_filename, "w") as sh_file:
            sh_file.write("#!/bin/sh\n")
            sh_file.write(f"cd {cmssw}\n")
            sh_file.write(f"export X509_USER_PROXY={proxy}\n")
            sh_file.write("source /cvmfs/cms.cern.ch/cmsset_default.sh\n")
            sh_file.write("export SCRAM_ARCH=el9_amd64_gcc11\n")
            sh_file.write("eval `scramv1 runtime -sh`\n")
            sh_file.write(f"cd {cmssw}{workpath}\n\n")

            for i, root_file in enumerate(root_files):
                root_file_name = os.path.basename(root_file)
                output_file = os.path.join(storage_path, root_file_name)
                if is_root_file_valid(output_file):
                    continue
                if os.path.exists(output_file):
                    os.remove(output_file)
                valid_jobs.append(i)

                sh_file.write(f"if [ $1 -eq {i} ]; then\n")
                sh_file.write(f"  mkdir -p logs {storage_path}\n")
                sh_file.write(
                    f"  python3 DCH_test.py -f root://cms-xrd-global.cern.ch/{root_file} -o {output_file} "
                    f"--nickName {nickname_final} -y {year} -s DCH -w 0 -j 0 -e UL "
                    f"-d {'MC' if mc_flag else 'Data'} --cuts {'tight' if tight_selection == 'True' else 'loose'}\n"
                )
                sh_file.write("fi\n")

        with open(condor_filename, "w") as condor_file:
            condor_file.write(f"executable = {script_filename}\n")
            condor_file.write("arguments  = $(ProcId)\n")
            condor_file.write(f"output     = {job_dir}/condorjob.$(ClusterId).$(ProcId).out\n")
            condor_file.write(f"error      = {job_dir}/condorjob.$(ClusterId).$(ProcId).err\n")
            condor_file.write(f"log        = {job_dir}/condorjob.$(ClusterId).log\n")
            condor_file.write("+JobFlavour = \"testmatch\"\n")
            condor_file.write("RequestCpus = 2\n")
            condor_file.write("request_memory = 4GB\n")
            condor_file.write("request_disk = 4GB\n")
            condor_file.write(f"queue {len(valid_jobs)}\n")

        if valid_jobs:
            print(f"Condor submission file created: {condor_filename}")
            os.system(f"condor_submit {condor_filename}")
        else:
            print(f"No jobs need to be submitted for {cuts}. All output files are valid.")

if __name__ == "__main__":
    # files = {
    #     ("MC", "2016"): "MC_samples_2016UL.csv",
    #     ("MC", "2017"): "MC_samples_2017UL.csv",
    #     ("MC", "2018"): "MC_samples_2018UL.csv",
    #     ("Data", "2016"): "Data_2016UL.csv",
    #     ("Data", "2017"): "Data_2017UL.csv",
    #     ("Data", "2018"): "Data_2018UL.csv",
    # }

    files = {
        ("MC", "2016"): "MC_samples_2016ULpreVFP.csv",
    }

    if args.year and args.type:
        csv_file = files[(args.type, args.year)]
        process_from_csv(csv_file, args.type == "MC", args.year, args.sample)
    else:
        for (t, y), f in files.items():
            process_from_csv(f, t == "MC", y, args.sample)
