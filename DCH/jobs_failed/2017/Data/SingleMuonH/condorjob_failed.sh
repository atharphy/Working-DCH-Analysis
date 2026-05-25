#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 0 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/80A61FBB-915E-D243-B001-00C8875B3073.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/80A61FBB-915E-D243-B001-00C8875B3073.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 1 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/0C016393-8F7B-2445-8AFB-A0847B900161.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/0C016393-8F7B-2445-8AFB-A0847B900161.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 2 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/C7B0C7F5-9C98-B848-9B2A-D9F66C13DBA5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/C7B0C7F5-9C98-B848-9B2A-D9F66C13DBA5.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 3 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/56847400-F1B5-E642-9B20-B8A6965FA5CE.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/56847400-F1B5-E642-9B20-B8A6965FA5CE.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 4 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/96177ED6-8B9A-4241-8184-79D140C56865.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/96177ED6-8B9A-4241-8184-79D140C56865.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/897DF4D1-4ED7-4D4E-84BF-1BA5A4690A80.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/897DF4D1-4ED7-4D4E-84BF-1BA5A4690A80.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 6 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/5DD648F5-A471-8449-A723-30D3E860F6CF.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/5DD648F5-A471-8449-A723-30D3E860F6CF.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 7 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/4ED7BC42-0A21-194C-8E23-A98988AF290A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/4ED7BC42-0A21-194C-8E23-A98988AF290A.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 8 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/F9242784-A233-264C-8BEA-B8E6EAFFC9E9.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/F9242784-A233-264C-8BEA-B8E6EAFFC9E9.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 9 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/ECDD314D-FF8A-A84F-AC27-44672AFAA638.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/ECDD314D-FF8A-A84F-AC27-44672AFAA638.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 10 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/5C9E9712-0419-2043-9441-8E969F4EBF79.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/5C9E9712-0419-2043-9441-8E969F4EBF79.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 11 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/AD6F4845-2445-2C4C-87EC-36587CD8D387.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/AD6F4845-2445-2C4C-87EC-36587CD8D387.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 12 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/B8DBD9BA-0E8A-4F48-AB7A-4C35A871C7E6.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/B8DBD9BA-0E8A-4F48-AB7A-4C35A871C7E6.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 13 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/B4DF97A3-1F93-AD4C-9964-4419009BBBE5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/B4DF97A3-1F93-AD4C-9964-4419009BBBE5.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 14 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/A4D2E6C9-F592-F748-A46B-BC91B768DBD7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/A4D2E6C9-F592-F748-A46B-BC91B768DBD7.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 15 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/75D4A578-84DB-944F-BEDD-81B23A3441A0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/75D4A578-84DB-944F-BEDD-81B23A3441A0.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 16 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/F89F4D4D-5DE2-724A-BEA8-027E1C6E2939.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/F89F4D4D-5DE2-724A-BEA8-027E1C6E2939.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 17 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/3EB89649-DBC0-5044-A30E-F8C81EB4BE13.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/3EB89649-DBC0-5044-A30E-F8C81EB4BE13.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 18 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/F0151C72-0D4E-8343-9039-D56DF8C63C97.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/F0151C72-0D4E-8343-9039-D56DF8C63C97.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 19 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/D8402BC3-3095-4C42-8497-4B28A3DD7ADD.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/D8402BC3-3095-4C42-8497-4B28A3DD7ADD.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 20 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/AAFF7443-48BE-D047-BDE8-E97B7E917BB4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/AAFF7443-48BE-D047-BDE8-E97B7E917BB4.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 21 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/83CE10DA-EEE4-DC46-A77F-FEE827A0B4BC.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/83CE10DA-EEE4-DC46-A77F-FEE827A0B4BC.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 22 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/448B0887-1C6A-4548-865F-CF174F4FD762.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/448B0887-1C6A-4548-865F-CF174F4FD762.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 23 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/2E4D5C46-C336-C441-BD8D-22DB55FE4E0A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/2E4D5C46-C336-C441-BD8D-22DB55FE4E0A.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 24 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/C96F2C68-BBBD-3E44-B7AE-D86FBEEFD7C8.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/C96F2C68-BBBD-3E44-B7AE-D86FBEEFD7C8.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 25 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/3866BF1E-C3E1-034B-B3F0-2B13D8FFC9DF.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/3866BF1E-C3E1-034B-B3F0-2B13D8FFC9DF.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 26 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/783BC807-BF24-ED4B-9666-7DE37D90464A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/783BC807-BF24-ED4B-9666-7DE37D90464A.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 27 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/FFB932FC-F180-5B48-B44E-E4C805A75047.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/FFB932FC-F180-5B48-B44E-E4C805A75047.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 28 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/F1C530E3-11A0-394B-B696-9E17EB3EDC78.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/F1C530E3-11A0-394B-B696-9E17EB3EDC78.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 29 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/F3C67A62-0C86-7346-8568-9C2D11FDB8AB.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/F3C67A62-0C86-7346-8568-9C2D11FDB8AB.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 30 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/AC26374C-C50B-804E-BF71-2AAE014679F6.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/AC26374C-C50B-804E-BF71-2AAE014679F6.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 31 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/663006D0-AA8B-D74B-82D1-5E79A271E58E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/663006D0-AA8B-D74B-82D1-5E79A271E58E.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 32 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/F131405D-934C-A243-8F6B-29698A4C3C87.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/F131405D-934C-A243-8F6B-29698A4C3C87.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 33 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/21B37F88-6C00-A849-8C41-8E0C898CAC23.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/21B37F88-6C00-A849-8C41-8E0C898CAC23.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 34 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/AE0C9515-1674-6546-A6A2-B13635917863.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/AE0C9515-1674-6546-A6A2-B13635917863.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 35 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/CE3B6F45-5957-5C45-B5C4-940BDE9C150D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/CE3B6F45-5957-5C45-B5C4-940BDE9C150D.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 36 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/79DDC16E-BBC9-A246-A69C-77CB29D3CE11.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/79DDC16E-BBC9-A246-A69C-77CB29D3CE11.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 37 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/6264D1ED-1D6D-9246-B751-49B0143D2F32.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/6264D1ED-1D6D-9246-B751-49B0143D2F32.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 38 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/944120D7-C350-3540-83F3-821E38E66662.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/944120D7-C350-3540-83F3-821E38E66662.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 39 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/C6470957-5869-E247-9E63-039F6576AFA4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/C6470957-5869-E247-9E63-039F6576AFA4.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 40 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/99416BAF-C9A9-C24F-98C6-0A22EB8EAFE5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/99416BAF-C9A9-C24F-98C6-0A22EB8EAFE5.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 41 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/D41885C5-3D8D-664E-84BE-3D959F6276CD.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/D41885C5-3D8D-664E-84BE-3D959F6276CD.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 42 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/1B44A528-2342-0842-B144-F030812516FE.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/1B44A528-2342-0842-B144-F030812516FE.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 43 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/90339ECC-EB9D-2C4B-92A7-AABE33C42A48.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/90339ECC-EB9D-2C4B-92A7-AABE33C42A48.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 44 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/74DCCFF3-F156-0244-9A00-C0975D5CE31D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/74DCCFF3-F156-0244-9A00-C0975D5CE31D.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 45 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/8F6BFEF4-3440-6E4B-965F-576CA215709D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/8F6BFEF4-3440-6E4B-965F-576CA215709D.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 46 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/7532364D-2A82-684F-B31A-8D00683E7FDA.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/7532364D-2A82-684F-B31A-8D00683E7FDA.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 47 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017H/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v1/2530000/86B90621-E4E9-244D-8385-4D1D7193375B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonH_loose/86B90621-E4E9-244D-8385-4D1D7193375B.root --nickName SingleMuonH -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
