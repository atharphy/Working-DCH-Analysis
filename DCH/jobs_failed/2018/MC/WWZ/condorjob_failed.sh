#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 0 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/WWZ_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch/Validation error: unmatched dataset pattern -o /eos/user/a/atahmad/run2_skims/MC_2018/WWZ_loose/Validation error: unmatched dataset pattern --nickName WWZ -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
