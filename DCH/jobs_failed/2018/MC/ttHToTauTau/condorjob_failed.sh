#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/270000/9445E043-7C95-0346-AB42-815A94DE6A27.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose/9445E043-7C95-0346-AB42-815A94DE6A27.root --nickName ttHToTauTau -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 25 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/B1BE954A-4616-5E4B-921D-CC232A9F73A0.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose/B1BE954A-4616-5E4B-921D-CC232A9F73A0.root --nickName ttHToTauTau -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 28 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/CC4DAA61-545F-5C41-AA2D-45DBC2735ABE.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose/CC4DAA61-545F-5C41-AA2D-45DBC2735ABE.root --nickName ttHToTauTau -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 41 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/4311453B-04AE-4140-846F-98BD3F80A973.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose/4311453B-04AE-4140-846F-98BD3F80A973.root --nickName ttHToTauTau -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 51 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/556D49D6-C37A-E843-91F4-6F167ADD80D1.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose/556D49D6-C37A-E843-91F4-6F167ADD80D1.root --nickName ttHToTauTau -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 56 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/A290830E-4DC8-DB4F-A882-E2863948E0BE.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose/A290830E-4DC8-DB4F-A882-E2863948E0BE.root --nickName ttHToTauTau -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 71 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHToTauTau_M125_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/325C52C4-0101-714B-AC46-5119AF487754.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHToTauTau_loose/325C52C4-0101-714B-AC46-5119AF487754.root --nickName ttHToTauTau -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
