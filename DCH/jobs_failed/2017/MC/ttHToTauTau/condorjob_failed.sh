#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 1 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/35A720F4-A0E6-C74E-898C-E01A2CF74F1B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose/35A720F4-A0E6-C74E-898C-E01A2CF74F1B.root --nickName ttHToTauTau -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 41 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/9769F59C-D8EE-1C4D-831E-636C50E70CE0.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose/9769F59C-D8EE-1C4D-831E-636C50E70CE0.root --nickName ttHToTauTau -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 48 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/5848FF7F-CDF2-EB4A-85F5-036109334A28.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose/5848FF7F-CDF2-EB4A-85F5-036109334A28.root --nickName ttHToTauTau -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 49 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/F07300FE-D267-8449-8EF4-40456EA6B1AD.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose/F07300FE-D267-8449-8EF4-40456EA6B1AD.root --nickName ttHToTauTau -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 51 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/88CF4E10-DE37-1349-B4C7-91F4A346C7B4.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose/88CF4E10-DE37-1349-B4C7-91F4A346C7B4.root --nickName ttHToTauTau -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 52 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/DB9A3165-4FF6-B543-9850-7985E1C82A2A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToTauTau_loose/DB9A3165-4FF6-B543-9850-7985E1C82A2A.root --nickName ttHToTauTau -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
