#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 0 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/WJetsToLNu_HT-600To800_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/70000/0214D70F-4833-EB43-BD99-B568AD67B758.root -o /eos/user/a/atahmad/run2_skims/MC_2016/WJetsToLNu_HT-600To800_part1_loose/0214D70F-4833-EB43-BD99-B568AD67B758.root --nickName WJetsToLNu_HT-600To800_part1 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
