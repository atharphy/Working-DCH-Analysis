#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 1 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttWJets_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttWJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/270000/3558C13A-2CA7-FA43-8C09-08284E582176.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttWJets_loose/3558C13A-2CA7-FA43-8C09-08284E582176.root --nickName ttWJets -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
