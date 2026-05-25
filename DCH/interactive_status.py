import os
import ROOT

jobs = {
    "2017": {
        "WJetsToLNu_HT-600To800_part3": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/106X_mc2017_realistic_v9_ext2-v3/50000/6FE1A4D5-ECE9-3641-9DF0-C891DFCABD50.root"
        ],
        "ttZJets": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/2430000/D0551D6E-2FA9-8D4E-9FBA-33869535A8AB.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/40000/78357116-325D-0442-8CE4-C6EADB15A9CD.root"
        ],
        "ttHToTauTau": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/35A720F4-A0E6-C74E-898C-E01A2CF74F1B.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/9769F59C-D8EE-1C4D-831E-636C50E70CE0.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/5848FF7F-CDF2-EB4A-85F5-036109334A28.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/F07300FE-D267-8449-8EF4-40456EA6B1AD.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/88CF4E10-DE37-1349-B4C7-91F4A346C7B4.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/DB9A3165-4FF6-B543-9850-7985E1C82A2A.root"
        ],
        "ttHToEE": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHJetToEE_M125_TuneCP5_13TeV-amcatnloFXFX-madspin-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/2430000/387E93EF-7D8F-224A-8BD3-5368C0DC4397.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHJetToEE_M125_TuneCP5_13TeV-amcatnloFXFX-madspin-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/40000/4C5F1928-52FA-1D42-9CAE-A1E14B82618A.root"
        ]
    },
    "2018": {
        "TTToSemiLeptonic": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/BB0B2273-B1B9-334F-A054-F144687A9BE1.root",
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/130000/34E2EF4E-6798-474C-820A-76FE24AE2CF5.root"
        ],
        "ttZJets": [
            "root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/250000/1E03AF0E-8737-C345-AB63-4461432C2D0C.root",
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

def is_root_file_valid(file_path):
    if not os.path.exists(file_path):
        return False
    try:
        root_file = ROOT.TFile.Open(file_path, "READ")
        if not root_file or root_file.IsZombie() or root_file.TestBit(ROOT.TFile.kRecovered):
            return False
        if not root_file.Get("Events"):
            return False
        root_file.Close()
        return True
    except Exception:
        return False

def check_outputs():
    all_good, all_bad = [], []

    for year, samples in jobs.items():
        for sample, inputs in samples.items():
            sample_clean = sample.split("_part")[0]
            save_dir = os.path.join(base_dir, year, "MC", sample, "output")

            good, bad = [], []
            for rf in inputs:
                basename = os.path.basename(rf)
                expected_out = os.path.join(save_dir, basename)

                if is_root_file_valid(expected_out):
                    good.append(expected_out)
                    all_good.append(expected_out)
                else:
                    bad.append(expected_out)
                    all_bad.append(expected_out)

            print(f"\nSample: {sample_clean} ({year})")
            print(f"   Good files: {len(good)}/{len(inputs)}")
            if bad:
                print("   Bad/missing files:")
                for bf in bad:
                    print("      ", bf)

    with open("good_interactive_files.txt", "w") as gf:
        gf.write("\n".join(all_good))
    with open("bad_interactive_files.txt", "w") as bf:
        bf.write("\n".join(all_bad))

    print("\n=== Overall Summary ===")
    print(f"   Total good files: {len(all_good)}")
    print(f"   Total bad/missing files: {len(all_bad)}")

if __name__ == "__main__":
    check_outputs()
