#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToEE_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHJetToEE_M125_TuneCP5_13TeV-amcatnloFXFX-madspin-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/2430000/387E93EF-7D8F-224A-8BD3-5368C0DC4397.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToEE_loose/387E93EF-7D8F-224A-8BD3-5368C0DC4397.root --nickName ttHToEE -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 6 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/ttHToEE_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/ttHJetToEE_M125_TuneCP5_13TeV-amcatnloFXFX-madspin-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v2/40000/4C5F1928-52FA-1D42-9CAE-A1E14B82618A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/ttHToEE_loose/4C5F1928-52FA-1D42-9CAE-A1E14B82618A.root --nickName ttHToEE -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
