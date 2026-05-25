import os
import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed

retry_jobs = {
    "2018": {
        "ttZJets": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/250000/EB7D1DEE-C5F8-CE40-935B-B3142F2E8862.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/2500000/E47A5EE3-0210-A540-BA56-EFA86DAA30A8.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/2500000/AC05C14C-B6AB-4A40-B647-D1F33544B0C0.root"
        ],
        "ttHToTauTau": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/270000/9445E043-7C95-0346-AB42-815A94DE6A27.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/B1BE954A-4616-5E4B-921D-CC232A9F73A0.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/CC4DAA61-545F-5C41-AA2D-45DBC2735ABE.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/4311453B-04AE-4140-846F-98BD3F80A973.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/556D49D6-C37A-E843-91F4-6F167ADD80D1.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/A290830E-4DC8-DB4F-A882-E2863948E0BE.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/325C52C4-0101-714B-AC46-5119AF487754.root"
        ],
        "ttHToEE": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHJetToEE_M125_TuneCP5_13TeV-amcatnloFXFX-madspin-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/230000/4BEAA4B9-5AAB-4447-ADE7-F4CDE3B7ADB8.root"
        ],
        "ttHJetToNonbb": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHJetToNonbb_M125_TuneCP5_13TeV_amcatnloFXFX_madspin_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/AA7AF8E4-297E-E544-82AF-86CBAE8E815E.root"
        ]
    }
}

base_dir = "/eos/user/a/atahmad/failed_jobs"
cmssw = os.getenv("CMSSW_BASE") + "/src/DCH-framework/DCH"

def download_and_run(year, sample, rf):
    sample_clean = sample.split("_part")[0]
    save_dir = os.path.join(base_dir, year, "MC", sample)
    output_dir = os.path.join(save_dir, "output")
    os.makedirs(output_dir, exist_ok=True)

    local_file = os.path.join(save_dir, os.path.basename(rf))
    out_file = os.path.join(output_dir, os.path.basename(rf))

    if not os.path.exists(local_file):
        print(f"[{sample}] Downloading {rf}")
        try:
            subprocess.run(["xrdcp", "-f", rf, local_file], check=True)
        except subprocess.CalledProcessError:
            print(f"[ERROR] Could not download {rf}")
            return
    else:
        print(f"[{sample}] Already exists: {local_file}")

    cmd = [
        "python3", f"{cmssw}/DCH_test.py",
        "-f", local_file,
        "-o", out_file,
        "--nickName", sample_clean,
        "-y", year,
        "-s", "DCH",
        "-w", "0",
        "-j", "0",
        "-e", "UL",
        "-d", "MC",
        "--cuts", "loose"
    ]
    print(f"[{sample}] Running: {' '.join(cmd)}")
    try:
        subprocess.run(cmd, check=True)
    except subprocess.CalledProcessError:
        print(f"[ERROR] Failed while running {local_file}")

def run_parallel(max_workers=6):
    tasks = []
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for year, samples in retry_jobs.items():
            for sample, files in samples.items():
                for rf in files:
                    tasks.append(executor.submit(download_and_run, year, sample, rf))

        for future in as_completed(tasks):
            try:
                future.result()
            except Exception as e:
                print(f"[ERROR] Unexpected: {e}")

if __name__ == "__main__":
    run_parallel(max_workers=6)
