#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 80 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_HT-600To800_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/106X_mc2017_realistic_v9_ext2-v3/50000/6FE1A4D5-ECE9-3641-9DF0-C891DFCABD50.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_HT-600To800_part3_loose/6FE1A4D5-ECE9-3641-9DF0-C891DFCABD50.root --nickName WJetsToLNu_HT-600To800_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
