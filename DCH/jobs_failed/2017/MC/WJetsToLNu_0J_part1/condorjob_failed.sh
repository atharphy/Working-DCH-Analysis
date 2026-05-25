#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 0 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/4B0444F5-3061-B64C-9BA8-840989EF093B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/4B0444F5-3061-B64C-9BA8-840989EF093B.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 1 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/A83101BE-5A77-924C-AB5C-C3899A49E34F.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/A83101BE-5A77-924C-AB5C-C3899A49E34F.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 2 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/F10EB63D-956F-6F49-B0DF-7E4498B406E9.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/F10EB63D-956F-6F49-B0DF-7E4498B406E9.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 4 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/F1A79ECB-8753-FB42-98A1-A133F59F87A5.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/F1A79ECB-8753-FB42-98A1-A133F59F87A5.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/339A609F-2C9C-9541-AA01-D0B6B812792E.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/339A609F-2C9C-9541-AA01-D0B6B812792E.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 6 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/39AA9122-1AB9-E449-B0C6-EC7D1D18499B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/39AA9122-1AB9-E449-B0C6-EC7D1D18499B.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 7 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/4AC3644D-A2DC-AD44-AA13-88A961C53C05.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/4AC3644D-A2DC-AD44-AA13-88A961C53C05.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 8 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/F5CF3681-2CCA-A341-8192-6124695DE3BA.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/F5CF3681-2CCA-A341-8192-6124695DE3BA.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 11 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/5EF1579B-DFD8-D74B-A87B-79912852405B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/5EF1579B-DFD8-D74B-A87B-79912852405B.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 12 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/B7015315-A041-1C40-A320-24B18207E58D.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/B7015315-A041-1C40-A320-24B18207E58D.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 13 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/219A768A-37FD-DD4D-851F-46FCF95A2C04.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/219A768A-37FD-DD4D-851F-46FCF95A2C04.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 15 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/64847185-0ADF-1A4D-B951-7CC1A7B04C59.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/64847185-0ADF-1A4D-B951-7CC1A7B04C59.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 16 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/F8256C34-BBE6-3B41-B345-B9538D000DD2.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/F8256C34-BBE6-3B41-B345-B9538D000DD2.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 17 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/B44489BB-156E-864B-A71E-F81D6296BA13.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/B44489BB-156E-864B-A71E-F81D6296BA13.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 18 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/6C85412A-47D1-B349-8A70-15ADF4E940C1.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/6C85412A-47D1-B349-8A70-15ADF4E940C1.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 19 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/969B42AD-6111-3C44-9469-A33DD4734686.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/969B42AD-6111-3C44-9469-A33DD4734686.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 21 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/DD293560-DBAA-A44B-AD53-2EA2D102BD26.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/DD293560-DBAA-A44B-AD53-2EA2D102BD26.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 22 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/3D7974F6-C192-0E4E-98F0-5AFA3BC0A5F8.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/3D7974F6-C192-0E4E-98F0-5AFA3BC0A5F8.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 23 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/FBA5ACCE-DDDE-A547-A389-D8C55D4F2541.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/FBA5ACCE-DDDE-A547-A389-D8C55D4F2541.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 26 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/2880EFAB-EF96-C141-880D-1E50298E5C60.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/2880EFAB-EF96-C141-880D-1E50298E5C60.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 29 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/E29BAB10-6BF5-9743-B872-3A01BBE49FDD.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/E29BAB10-6BF5-9743-B872-3A01BBE49FDD.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 30 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/CAAF93EC-4D18-C34D-B7EB-E243EF76DD97.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/CAAF93EC-4D18-C34D-B7EB-E243EF76DD97.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 31 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/04AFB61D-6C3F-F14B-8B14-77AE3A5FD44C.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/04AFB61D-6C3F-F14B-8B14-77AE3A5FD44C.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 33 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/CB3614D5-C8C0-9B49-BE67-CE4987374A48.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/CB3614D5-C8C0-9B49-BE67-CE4987374A48.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 34 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/EDF4C7CA-F20A-884F-81B8-255440D4CEB5.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/EDF4C7CA-F20A-884F-81B8-255440D4CEB5.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 35 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/45E09155-F84A-7847-BE5B-BA0FF48753A1.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/45E09155-F84A-7847-BE5B-BA0FF48753A1.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 37 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/BAB31615-A45B-1E46-9D1C-4A5A5DF964A9.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/BAB31615-A45B-1E46-9D1C-4A5A5DF964A9.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 39 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/9EE12441-1B12-224D-8087-46A7418E0EBD.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/9EE12441-1B12-224D-8087-46A7418E0EBD.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 40 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/70000/DEFAD2FA-4DFC-5747-8DF9-AA406C00BB40.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/DEFAD2FA-4DFC-5747-8DF9-AA406C00BB40.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 44 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/70000/B27E5DB8-DA59-C649-95F2-502D45A9BD79.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/B27E5DB8-DA59-C649-95F2-502D45A9BD79.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 45 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/D9540049-1142-0145-B301-9D14E5B6F546.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/D9540049-1142-0145-B301-9D14E5B6F546.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 46 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/386F2AD3-BC29-1D49-B49F-A4FF7C6A8CC7.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/386F2AD3-BC29-1D49-B49F-A4FF7C6A8CC7.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 47 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/3E96A3A6-90B5-A248-A778-01A0B022040E.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/3E96A3A6-90B5-A248-A778-01A0B022040E.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 48 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/70000/D93B2D15-1582-E948-A9C4-7B7B54E166D5.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/D93B2D15-1582-E948-A9C4-7B7B54E166D5.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 50 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/3B757AEC-606D-D746-97FF-456567A07DEB.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/3B757AEC-606D-D746-97FF-456567A07DEB.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 53 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/70000/78BAB777-85E1-B745-9D0B-2618FBED8876.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/78BAB777-85E1-B745-9D0B-2618FBED8876.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 54 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/70000/76272705-8441-C14C-84AD-98DF819CEEBD.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/76272705-8441-C14C-84AD-98DF819CEEBD.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 56 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/42175AC4-F05B-3046-9C5F-29A585C2B4C7.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/42175AC4-F05B-3046-9C5F-29A585C2B4C7.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 57 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/130000/616DAB23-EFC4-0B4B-8828-E6DB561C2688.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/616DAB23-EFC4-0B4B-8828-E6DB561C2688.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 58 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/4F46151F-ACF8-CF40-B93F-957FE77896D6.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/4F46151F-ACF8-CF40-B93F-957FE77896D6.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 59 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/F68619E9-423C-064B-A37E-48C826880019.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/F68619E9-423C-064B-A37E-48C826880019.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 61 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/A1978AAE-F9D4-AE4C-A493-A9FF894F1CB2.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/A1978AAE-F9D4-AE4C-A493-A9FF894F1CB2.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 63 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/1B00C746-1862-7D47-9DAC-A5C160784455.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/1B00C746-1862-7D47-9DAC-A5C160784455.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 64 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/A8BC6007-4075-7949-837A-B0D37B34BB09.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/A8BC6007-4075-7949-837A-B0D37B34BB09.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 65 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/645749BC-13D8-EB40-A891-95221497ED1F.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/645749BC-13D8-EB40-A891-95221497ED1F.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 66 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/B03AC31B-2446-3948-934C-4CEE0036A422.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/B03AC31B-2446-3948-934C-4CEE0036A422.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 67 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/16E2A4E2-ED52-5241-98F6-366ABD404B2C.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/16E2A4E2-ED52-5241-98F6-366ABD404B2C.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 68 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/AD9D94FB-BED0-D541-AC52-64B83D4D8272.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/AD9D94FB-BED0-D541-AC52-64B83D4D8272.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 69 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/01611982-B5A3-7B4C-99A1-568F4D404545.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/01611982-B5A3-7B4C-99A1-568F4D404545.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 72 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/DD95FFF5-6150-424D-9EDF-60D6C35F9A9B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/DD95FFF5-6150-424D-9EDF-60D6C35F9A9B.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 73 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/BC7029FC-AA73-2F43-B1DC-7CC93C2C89C6.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/BC7029FC-AA73-2F43-B1DC-7CC93C2C89C6.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 74 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/4E58DC77-395C-7648-8771-BF0E0C78B2A8.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/4E58DC77-395C-7648-8771-BF0E0C78B2A8.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 75 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/CF1075B8-CD32-B34C-BB43-F3B0C6F6B50B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/CF1075B8-CD32-B34C-BB43-F3B0C6F6B50B.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 76 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/8248E763-3FB6-8B40-91CA-116C0868359D.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/8248E763-3FB6-8B40-91CA-116C0868359D.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 77 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/FF84516A-AFF0-4D44-A72A-CE15E3616E97.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/FF84516A-AFF0-4D44-A72A-CE15E3616E97.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 78 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/DF99CDD4-B551-934C-9972-E04A912AF81B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/DF99CDD4-B551-934C-9972-E04A912AF81B.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 79 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/F9C89662-D59F-F24C-BC49-A2AC17A51F95.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/F9C89662-D59F-F24C-BC49-A2AC17A51F95.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 80 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/C22A42A4-E807-8945-B62A-F74F165F06F1.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/C22A42A4-E807-8945-B62A-F74F165F06F1.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 81 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/CFA92E68-A8B9-0649-B5F1-58BADA927D9C.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/CFA92E68-A8B9-0649-B5F1-58BADA927D9C.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 82 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/69E85BD1-D652-9E43-B071-22621CDBD511.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/69E85BD1-D652-9E43-B071-22621CDBD511.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 83 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/A2B54F6D-98E0-4242-BE9A-AF844EE6EE9A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/A2B54F6D-98E0-4242-BE9A-AF844EE6EE9A.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 84 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/FC344845-B549-354E-87EF-BB41E85CD8A5.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/FC344845-B549-354E-87EF-BB41E85CD8A5.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 85 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/3FC9E55A-191F-7340-B47C-7EFCB7E0C728.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/3FC9E55A-191F-7340-B47C-7EFCB7E0C728.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 86 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/AAB5C3D7-BD7E-8642-B76C-1507F1A53E8D.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/AAB5C3D7-BD7E-8642-B76C-1507F1A53E8D.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 87 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/CB392B7D-2789-3541-A74B-14434A5F8152.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/CB392B7D-2789-3541-A74B-14434A5F8152.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 88 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/E34EBF8A-3F61-3341-A268-A4ADA999AED6.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/E34EBF8A-3F61-3341-A268-A4ADA999AED6.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 89 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/B7F6CDF1-6480-DE42-9CF3-D88076EFBF98.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/B7F6CDF1-6480-DE42-9CF3-D88076EFBF98.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 90 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/F77E274E-20BF-6643-AC65-7C9B3B5E110A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/F77E274E-20BF-6643-AC65-7C9B3B5E110A.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 91 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/C15D9175-40F1-6643-A0F8-D20C857B17F4.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/C15D9175-40F1-6643-A0F8-D20C857B17F4.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 92 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/0302B3BD-4428-6146-8B6F-D7030F0C410A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/0302B3BD-4428-6146-8B6F-D7030F0C410A.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 94 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/12F3ABFD-F69F-A141-B3E4-8FD468538138.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/12F3ABFD-F69F-A141-B3E4-8FD468538138.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 95 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/D3BFBC45-7DB6-404B-B415-21A157BC7A54.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/D3BFBC45-7DB6-404B-B415-21A157BC7A54.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 96 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/4D51149B-1B74-1F47-BB91-F8F4E2E018DF.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/4D51149B-1B74-1F47-BB91-F8F4E2E018DF.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 99 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/E0646AE9-F905-E145-BCEC-B639A372EFE3.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/E0646AE9-F905-E145-BCEC-B639A372EFE3.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 101 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/535AC842-0B4A-E548-9403-A78FF57ACEB6.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/535AC842-0B4A-E548-9403-A78FF57ACEB6.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 102 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/C087404C-4DED-3F40-862F-AAA55579C127.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/C087404C-4DED-3F40-862F-AAA55579C127.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 103 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/A6F3E7E1-392E-F44A-844F-50F15DD8C781.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/A6F3E7E1-392E-F44A-844F-50F15DD8C781.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 105 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/2436FB7B-5A3D-854C-9648-80439F6DC8C1.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/2436FB7B-5A3D-854C-9648-80439F6DC8C1.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 106 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/D4231FEB-FCE3-6B4D-873A-664774BB8641.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/D4231FEB-FCE3-6B4D-873A-664774BB8641.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 109 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/8DC72C65-8955-2542-B65F-75E5B847D7E5.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/8DC72C65-8955-2542-B65F-75E5B847D7E5.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 110 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/270000/0A64F148-9520-E14B-8421-2B006BCA05F7.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/0A64F148-9520-E14B-8421-2B006BCA05F7.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 112 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/280000/66960A80-72E3-BD4B-8B6F-D1938465C039.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/66960A80-72E3-BD4B-8B6F-D1938465C039.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 113 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/C1DE10E6-DC8D-534A-8BEA-F3F1D146471B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/C1DE10E6-DC8D-534A-8BEA-F3F1D146471B.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 114 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/31443B56-8E42-2443-809F-6C7798738DEF.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/31443B56-8E42-2443-809F-6C7798738DEF.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 115 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/0865B0F4-BD23-C04E-A0C4-BD53E0534430.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/0865B0F4-BD23-C04E-A0C4-BD53E0534430.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 116 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/120000/707DAE36-9B6C-614C-99B0-0429A8ED0466.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/707DAE36-9B6C-614C-99B0-0429A8ED0466.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 117 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/70000/7C5048EB-C0A2-F845-981E-FB3870453A34.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/7C5048EB-C0A2-F845-981E-FB3870453A34.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 118 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/WJetsToLNu_0J_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mc2017_realistic_v9-v1/70000/D3EC83BF-82ED-314F-ADA7-2B1A3EC8166E.root -o /eos/user/a/atahmad/run2_skims/MC_2017/WJetsToLNu_0J_part1_loose/D3EC83BF-82ED-314F-ADA7-2B1A3EC8166E.root --nickName WJetsToLNu_0J_part1 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
