import os
import glob
import argparse
import ROOT
import sys
import errno

parser = argparse.ArgumentParser(description="Generate Condor job submission scripts.")
parser.add_argument("-s", type=str, default="False", help="Set to 'True' for tight cuts, 'False' for loose cuts")
parser.add_argument("-mc", type=str, default=None, help="Set to 'True' for mc samples, 'False' for data samples")
parser.add_argument("-type", type=str, choices=["DY", "DYInc", "WJ", "WJInc", "TT", "TTW", "TTZ", "WZ", "QCD", "ZZ", "WW", "ttH"])
args = parser.parse_args()

tight_selection = args.s
sample_selection = args.mc
mc_type = args.type

cmssw = os.getenv("CMSSW_BASE") + "/src/"
workpath = "DCH-framework/DCH/"
proxy = os.getenv("X509_USER_PROXY")
storage_root = "/eos/user/a/atahmad/guru_skims_tight"

NICKNAME = {
    "WJetsToLNu_HT-70To100": "WJetsToLNu_HT-70To100",
    "WJetsToLNu_HT-100To200": "WJetsToLNu_HT-100To200",
    "WJetsToLNu_HT-200To400": "WJetsToLNu_HT-200To400",
    "WJetsToLNu_HT-400To600": "WJetsToLNu_HT-400To600",
    "WJetsToLNu_HT-600To800": "WJetsToLNu_HT-600To800",
    "WJetsToLNu_HT-800To1200": "WJetsToLNu_HT-800To1200",
    "WJetsToLNu_HT-1200To2500": "WJetsToLNu_HT-1200To2500",
    "WJetsToLNu_HT-2500ToInf": "WJetsToLNu_HT-2500ToInf",

    "DYJetsToLL_M-50_HT-70to100": "DY",
    "DYJetsToLL_M-50_HT-100to200": "DY",
    "DYJetsToLL_M-50_HT-200to400": "DY",
    "DYJetsToLL_M-50_HT-400to600": "DY",
    "DYJetsToLL_M-50_HT-600to800": "DY",
    "DYJetsToLL_M-50_HT-800to1200": "DY",
    "DYJetsToLL_M-50_HT-1200to2500": "DY",
    "DYJetsToLL_M-50_HT-2500toInf": "DY",

    "QCD_HT50to100": "QCD_HT50to100",
    "QCD_HT100to200": "QCD_HT100to200",
    "QCD_HT200to300": "QCD_HT200to300",
    "QCD_HT300to500": "QCD_HT300to500",
    "QCD_HT500to700": "QCD_HT500to700",
    "QCD_HT700to1000": "QCD_HT700to1000",
    "QCD_HT1000to1500": "QCD_HT1000to1500",
    "QCD_HT1500to2000": "QCD_HT1500to2000",
    "QCD_HT2000toInf": "QCD_HT2000toInf",

    "WZ_TuneCP5": "WZ",
    "WZTo3LNu_TuneCP5": "WZTo3LNu",
    "WZTo2Q2L_mllmin4p0": "WZTo2Q2L",

    "TTTo2L2Nu": "TTTo2L2Nu",
    "TTToHadronic": "TTToHadronic",
    "TTToSemiLeptonic_part1": "TTToSemiLeptonic",
    "TTToSemiLeptonic_part2": "TTToSemiLeptonic",

    "ttWJets_TuneCP5": "ttWJets",
    "ttZJets_TuneCP5": "ttZJets",

    "WJetsToLNu_TuneCP5": "WJetsToLNu",
    "DYJetsToLL_M-10to50": "DYJetsToLLM10to50",
    "DYJetsToLL_M-50": "DYJetsToLLM50",

    "WW_TuneCP5": "WW",
    "WWTo2L2Nu_TuneCP5": "WWTo2L2Nu",

    "ZZTo4L_TuneCP5": "ZZTo4L",
    "ZZTo2L2Nu_TuneCP5": "ZZTo2L2Nu",
    "ZZTo2Q2L_mllmin4p0": "ZZTo2Q2L",

    "ttHJetToEE_M125": "ttHToEE",
    "ttHToMuMu_M125": "ttHToMuMu",
    "ttHToTauTau_M125": "ttHToTauTau",
    "ttHTobb_ttTo2L2Nu": "ttHTo2L2Nu",
}

def guess_data_nickname(subtype_basename: str) -> str:
    if "EGamma" in subtype_basename:
        return "EGamma"
    if "SingleMuon" in subtype_basename:
        return "SingleMuon"
    return "Data"

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

def process(mc_flag, mc_type):
    if mc_flag:
        mc_config = {
            "DY":    ("DY_cuts",    "samples_2018/DY_samples/DY*/*.txt",    f"{storage_root}/DY_MC"),
            "DYInc": ("DYInc_cuts", "samples_2018/DYInc_samples/*.txt", f"{storage_root}/DYInc_MC"),
            "WJ":    ("WJ_cuts",    "samples_2018/WJ_samples/*.txt",    f"{storage_root}/WJ_MC"),
            "WJInc": ("WJInc_cuts", "samples_2018/WJInc_samples/*.txt", f"{storage_root}/WJInc_MC"),
            "TT":    ("TT_cuts",    "samples_2018/TT_samples/*.txt",    f"{storage_root}/TT_MC"),
            "TTW":   ("TTW_cuts",   "samples_2018/ttW_samples/*.txt",   f"{storage_root}/TTW_MC"),
            "TTZ":   ("TTZ_cuts",   "samples_2018/ttZ_samples/*.txt",   f"{storage_root}/TTZ_MC"),
            "WZ":    ("WZ_cuts",    "samples_2018/WZ_samples/*.txt",    f"{storage_root}/WZ_MC"),
            "QCD":   ("QCD_cuts",   "samples_2018/QCD_samples/*.txt",   f"{storage_root}/QCD_MC"),
            "ZZ":    ("ZZ_cuts",    "samples_2018/ZZ_samples/*.txt",    f"{storage_root}/ZZ_MC"),
            "WW":    ("WW_cuts",    "samples_2018/WW_samples/*.txt",    f"{storage_root}/WW_MC"),
            "ttH":   ("ttH_cuts",   "samples_2018/ttH_samples/*.txt",   f"{storage_root}/ttH_MC"),
        }
        job_prefix, file_pattern, storage_base = mc_config[mc_type]
        data_files = glob.glob(file_pattern)
    else:
        job_prefix = "data_cuts"
        data_files = glob.glob("samples_2018/Data_UL2018/*.txt")
        storage_base = f"{storage_root}/Data_2018_fake_samples"

    for data_file in data_files:
        subtype = os.path.splitext(os.path.basename(data_file))[0]
        cuts = f"{subtype}_{'tight' if tight_selection == 'True' else 'loose'}"
        storage_path = f"{storage_base}/{cuts}/"
        nickname = NICKNAME.get(subtype, subtype) if mc_flag else guess_data_nickname(subtype)

        with open(data_file, "r") as f:
            root_files = [line.strip() for line in f if line.strip()]

        job_dir = os.path.join(cmssw, workpath, f"jobs/{job_prefix}_{cuts}")

        for path in [job_dir, storage_path]:
            try:
                os.makedirs(path, exist_ok=True)
            except OSError as e:
                if e.errno == errno.EEXIST:
                    pass
                else:
                    raise

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

                dtype = "MC" if mc_flag else "Data"
                cutopt = "tight" if tight_selection == "True" else "loose"

                sh_file.write(f"if [ $1 -eq {i} ]; then\n")
                sh_file.write(f"  mkdir -p logs {storage_path}\n")
                sh_file.write(
                    f"  python3 DCH_test.py -f {root_file} -o {output_file} "
                    f"--nickName {nickname} -y 2018 -s DCH -w 0 -j 0 -e UL "
                    f"-d {dtype} --cuts {cutopt}\n"
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
            condor_file.write("on_exit_hold = (ExitBySignal == True) || (ExitCode != 0) || (!(ExitSignal =?= UNDEFINED))\n")
            condor_file.write("periodic_release = (NumJobStarts < 5) && ((CurrentTime - EnteredCurrentStatus) > 600)\n")
            condor_file.write(f"queue {len(valid_jobs)}\n")

        if valid_jobs:
            print(f"Condor submission file created: {condor_filename}")
            os.system(f"condor_submit {condor_filename}")
        else:
            print(f"No jobs need to be submitted for {cuts}. All output files are valid.")

if __name__ == "__main__":
    if sample_selection is None:
        mc_types = ["DY", "DYInc", "WJ", "WJInc", "TT", "TTW", "TTZ", "WZ", "QCD", "ZZ", "WW", "ttH"]
        for t in mc_types:
            print(f">>> Submitting MC type: {t}")
            process(True, t)
        print(">>> Submitting Data")
        process(False, None)
    else:
        process(sample_selection == "True", mc_type)
