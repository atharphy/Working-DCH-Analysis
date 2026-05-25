#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 19 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttZJets_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/2430000/D0551D6E-2FA9-8D4E-9FBA-33869535A8AB.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttZJets_loose/D0551D6E-2FA9-8D4E-9FBA-33869535A8AB.root --nickName ttZJets -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 21 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttZJets_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/40000/78357116-325D-0442-8CE4-C6EADB15A9CD.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttZJets_loose/78357116-325D-0442-8CE4-C6EADB15A9CD.root --nickName ttZJets -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
