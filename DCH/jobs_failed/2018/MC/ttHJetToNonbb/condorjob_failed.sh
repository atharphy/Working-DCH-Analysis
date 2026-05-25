#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 49 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2018/ttHJetToNonbb_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL18NanoAODv9/ttHJetToNonbb_M125_TuneCP5_13TeV_amcatnloFXFX_madspin_pythia8/NANOAODSIM/106X_upgrade2018_realistic_v16_L1v1-v1/280000/AA7AF8E4-297E-E544-82AF-86CBAE8E815E.root -o /eos/user/a/atahmad/run2_skims/MC_2018/ttHJetToNonbb_loose/AA7AF8E4-297E-E544-82AF-86CBAE8E815E.root --nickName ttHJetToNonbb -y 2018 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
