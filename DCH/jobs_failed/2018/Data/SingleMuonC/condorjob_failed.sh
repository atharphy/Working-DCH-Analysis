#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 14 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2018/SingleMuonC_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2018C/SingleMuon/NANOAOD/UL2018_MiniAODv2_NanoAODv9_GT36-v1/2520000/ED95384D-9D3D-AE45-8425-C4C080E691C5.root -o /eos/user/a/atahmad/run2_skims/Data_2018/SingleMuonC_loose/ED95384D-9D3D-AE45-8425-C4C080E691C5.root --nickName SingleMuonC -y 2018 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 24 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2018/SingleMuonC_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2018C/SingleMuon/NANOAOD/UL2018_MiniAODv2_NanoAODv9_GT36-v1/2520000/B3487FE0-B172-AD47-A13A-388C0A9BF93F.root -o /eos/user/a/atahmad/run2_skims/Data_2018/SingleMuonC_loose/B3487FE0-B172-AD47-A13A-388C0A9BF93F.root --nickName SingleMuonC -y 2018 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
