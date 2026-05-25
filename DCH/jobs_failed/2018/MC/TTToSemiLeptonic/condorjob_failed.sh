#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 265 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/TTToSemiLeptonic_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/BB0B2273-B1B9-334F-A054-F144687A9BE1.root -o /eos/user/a/atahmad/run2_skims/MC_2018/TTToSemiLeptonic_loose/BB0B2273-B1B9-334F-A054-F144687A9BE1.root --nickName TTToSemiLeptonic -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 304 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/TTToSemiLeptonic_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/130000/34E2EF4E-6798-474C-820A-76FE24AE2CF5.root -o /eos/user/a/atahmad/run2_skims/MC_2018/TTToSemiLeptonic_loose/34E2EF4E-6798-474C-820A-76FE24AE2CF5.root --nickName TTToSemiLeptonic -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
