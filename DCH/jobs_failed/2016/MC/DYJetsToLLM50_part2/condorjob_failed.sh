#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 0 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL16_FSUL16_106X_mcRun2_asymptotic_v17-v2/60000/BCB829C4-BD49-5443-A26F-6F391989640D.root -o /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose/BCB829C4-BD49-5443-A26F-6F391989640D.root --nickName DYJetsToLLM50_part2 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 1 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL16_FSUL16_106X_mcRun2_asymptotic_v17-v2/60000/E0CFDDA3-BDB0-8E44-8361-FC68EE088986.root -o /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose/E0CFDDA3-BDB0-8E44-8361-FC68EE088986.root --nickName DYJetsToLLM50_part2 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 2 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL16_FSUL16_106X_mcRun2_asymptotic_v17-v2/60000/5D3FEFDF-7270-E34E-A44C-5A02C9630A5B.root -o /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose/5D3FEFDF-7270-E34E-A44C-5A02C9630A5B.root --nickName DYJetsToLLM50_part2 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 3 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL16_FSUL16_106X_mcRun2_asymptotic_v17-v2/60000/812E9E12-7086-4445-B341-9B4AA24B620E.root -o /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose/812E9E12-7086-4445-B341-9B4AA24B620E.root --nickName DYJetsToLLM50_part2 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 4 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL16_FSUL16_106X_mcRun2_asymptotic_v17-v2/60000/9C9792E1-63AE-D247-BB90-26139892F477.root -o /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose/9C9792E1-63AE-D247-BB90-26139892F477.root --nickName DYJetsToLLM50_part2 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL16_FSUL16_106X_mcRun2_asymptotic_v17-v2/60000/96CA8370-C1AC-0C41-AD45-3E8C255FF3D3.root -o /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose/96CA8370-C1AC-0C41-AD45-3E8C255FF3D3.root --nickName DYJetsToLLM50_part2 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 6 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL16NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL16_FSUL16_106X_mcRun2_asymptotic_v17-v2/60000/B08AA773-95FD-9D4D-B348-6776FD78D64A.root -o /eos/user/a/atahmad/run2_skims/MC_2016/DYJetsToLLM50_part2_loose/B08AA773-95FD-9D4D-B348-6776FD78D64A.root --nickName DYJetsToLLM50_part2 -y 2016 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
