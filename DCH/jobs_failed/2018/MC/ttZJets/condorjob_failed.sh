#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/250000/1E03AF0E-8737-C345-AB63-4461432C2D0C.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose/1E03AF0E-8737-C345-AB63-4461432C2D0C.root --nickName ttZJets -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 7 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/250000/EB7D1DEE-C5F8-CE40-935B-B3142F2E8862.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose/EB7D1DEE-C5F8-CE40-935B-B3142F2E8862.root --nickName ttZJets -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 17 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/2500000/E47A5EE3-0210-A540-BA56-EFA86DAA30A8.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose/E47A5EE3-0210-A540-BA56-EFA86DAA30A8.root --nickName ttZJets -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 18 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v2/2500000/AC05C14C-B6AB-4A40-B647-D1F33544B0C0.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttZJets_loose/AC05C14C-B6AB-4A40-B647-D1F33544B0C0.root --nickName ttZJets -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
