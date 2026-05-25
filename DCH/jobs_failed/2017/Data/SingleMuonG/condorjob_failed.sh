#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 0 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/37D58E7F-C42B-BB4A-A1DA-1A328B2B633D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/37D58E7F-C42B-BB4A-A1DA-1A328B2B633D.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 1 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/BEC5815A-72C2-B943-A65B-C5DC3E770282.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BEC5815A-72C2-B943-A65B-C5DC3E770282.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 2 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/CBA95D66-BC6C-A648-8659-F194616C4689.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/CBA95D66-BC6C-A648-8659-F194616C4689.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 3 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/2F6411F5-0499-EE4A-9842-9D6637DF26F5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/2F6411F5-0499-EE4A-9842-9D6637DF26F5.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 4 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/7EFB493D-5899-8B47-B858-61C0B44EBA48.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7EFB493D-5899-8B47-B858-61C0B44EBA48.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/5B43F108-5F32-8246-BDBA-78886C20F9EB.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/5B43F108-5F32-8246-BDBA-78886C20F9EB.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 6 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/2E5E591C-FCEB-0140-906D-CA5F64C1C54B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/2E5E591C-FCEB-0140-906D-CA5F64C1C54B.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 7 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/21A0C4E6-E589-D045-8882-A73B5C407C48.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/21A0C4E6-E589-D045-8882-A73B5C407C48.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 8 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/DF0CCBC4-3608-0A4D-87E8-2CA3E81FA987.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/DF0CCBC4-3608-0A4D-87E8-2CA3E81FA987.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 9 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/7CBF6B85-B407-8240-95E4-107086BF755A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7CBF6B85-B407-8240-95E4-107086BF755A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 10 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/8B842E5F-7227-3B44-8870-5A8022C16695.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/8B842E5F-7227-3B44-8870-5A8022C16695.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 11 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/E713286C-8D40-834F-987C-7BA497A716C9.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/E713286C-8D40-834F-987C-7BA497A716C9.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 12 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/15A12833-90C3-FE4F-B511-EDA8ADFDA0C3.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/15A12833-90C3-FE4F-B511-EDA8ADFDA0C3.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 13 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/6D591869-7651-394F-B3E9-B31C3A625789.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/6D591869-7651-394F-B3E9-B31C3A625789.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 14 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/DDB65767-80B4-5746-8A44-01140D794A79.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/DDB65767-80B4-5746-8A44-01140D794A79.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 15 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/D6D05844-1AC0-C841-B442-15E3B4175B07.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/D6D05844-1AC0-C841-B442-15E3B4175B07.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 16 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/B8A777D5-5DF6-684F-BBA5-5B126E8E0722.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/B8A777D5-5DF6-684F-BBA5-5B126E8E0722.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 17 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/88313309-ED3B-AB43-BBA1-EB9FF3A77560.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/88313309-ED3B-AB43-BBA1-EB9FF3A77560.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 18 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/FE238438-6C54-D044-AC49-3AB86E025B4A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/FE238438-6C54-D044-AC49-3AB86E025B4A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 19 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/7B6966B5-416B-B34D-9704-F86A6E3B61CA.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7B6966B5-416B-B34D-9704-F86A6E3B61CA.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 20 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/3FDEAAA5-1BE3-4B47-9B6F-0F5DE89C4EC0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/3FDEAAA5-1BE3-4B47-9B6F-0F5DE89C4EC0.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 21 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/EDD40438-D0CB-144B-9B7E-3AAAD892481B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/EDD40438-D0CB-144B-9B7E-3AAAD892481B.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 22 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/C74D6627-6B6B-0E46-9D87-F35FDB7AD4F8.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/C74D6627-6B6B-0E46-9D87-F35FDB7AD4F8.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 23 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2550000/0B431F71-4765-2B4A-BF3C-A1CF0DCA3DD7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/0B431F71-4765-2B4A-BF3C-A1CF0DCA3DD7.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 24 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BA4FF6BC-5168-CF4F-8BE6-95393A660D46.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BA4FF6BC-5168-CF4F-8BE6-95393A660D46.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 25 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/FC26DBE1-1399-9A4A-9513-B24E6B0A9803.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/FC26DBE1-1399-9A4A-9513-B24E6B0A9803.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 26 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/B424C6DA-D9FC-574E-B075-713A6ACDBB30.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/B424C6DA-D9FC-574E-B075-713A6ACDBB30.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 27 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/3F6D0DB5-B848-FF4A-BF4E-191B35A5558B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/3F6D0DB5-B848-FF4A-BF4E-191B35A5558B.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 28 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/5E98431F-58D5-1A47-8EFE-A2B474AE4F6E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/5E98431F-58D5-1A47-8EFE-A2B474AE4F6E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 29 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/293F96D0-824E-924C-B30F-709D66828FD7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/293F96D0-824E-924C-B30F-709D66828FD7.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 30 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/E95A5353-B976-3149-8C95-2516951D4673.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/E95A5353-B976-3149-8C95-2516951D4673.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 31 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9CE15BD3-DDA9-D047-8FAE-F3FFFED5521A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9CE15BD3-DDA9-D047-8FAE-F3FFFED5521A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 32 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9F0D0AEE-F3A5-4C41-BEAD-70AE5F16767F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9F0D0AEE-F3A5-4C41-BEAD-70AE5F16767F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 33 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/AEDD76D5-FC4A-D345-9CB2-B522CC4955BE.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/AEDD76D5-FC4A-D345-9CB2-B522CC4955BE.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 34 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/594ADC48-5C3E-1E4D-AA23-1F7230FA031D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/594ADC48-5C3E-1E4D-AA23-1F7230FA031D.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 35 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/59017872-2F1D-B946-81F6-E4EEC4DB438F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/59017872-2F1D-B946-81F6-E4EEC4DB438F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 36 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/322437B3-7DCC-6C4A-87E8-EF8C642957F5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/322437B3-7DCC-6C4A-87E8-EF8C642957F5.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 37 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/0C204781-CFED-4740-8A2A-5777E3525696.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/0C204781-CFED-4740-8A2A-5777E3525696.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 38 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/410983FB-8A56-B847-BA1E-82AF0C499756.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/410983FB-8A56-B847-BA1E-82AF0C499756.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 39 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F3A191F4-77B2-9B45-878D-E742C3C1E55C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F3A191F4-77B2-9B45-878D-E742C3C1E55C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 40 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/C51E3C98-062E-5242-8269-863B6770A901.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/C51E3C98-062E-5242-8269-863B6770A901.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 41 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/40DAB4A2-1485-FD46-8402-C6B3BC45B636.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/40DAB4A2-1485-FD46-8402-C6B3BC45B636.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 42 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/51C59ABC-6983-3745-A636-00328B2C36DD.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/51C59ABC-6983-3745-A636-00328B2C36DD.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 43 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F7EE0EBE-8FEC-B14F-83A4-678A1E8363A4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F7EE0EBE-8FEC-B14F-83A4-678A1E8363A4.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 44 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/81C11273-59A6-444E-8CFC-2D0F16DF939F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/81C11273-59A6-444E-8CFC-2D0F16DF939F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 45 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/661EC8AB-3AE0-C849-94B1-A9129AB89FAA.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/661EC8AB-3AE0-C849-94B1-A9129AB89FAA.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 46 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BA5266FB-0410-D448-A3BC-59943A5E32F1.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BA5266FB-0410-D448-A3BC-59943A5E32F1.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 47 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/8A291693-DA51-704D-B373-FF2F9F59D9C5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/8A291693-DA51-704D-B373-FF2F9F59D9C5.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 48 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BFF15C88-3355-524C-86C9-77991AF16EF0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BFF15C88-3355-524C-86C9-77991AF16EF0.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 49 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/B5352452-1DC1-B64D-A48A-02B40D15EAB5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/B5352452-1DC1-B64D-A48A-02B40D15EAB5.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 50 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F772CF70-BC56-D44B-A98C-663093C2B141.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F772CF70-BC56-D44B-A98C-663093C2B141.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 51 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A982D22A-32EE-5D4A-B634-2743A5F5D54F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A982D22A-32EE-5D4A-B634-2743A5F5D54F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 52 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A9E246AF-ED28-DD40-890C-369C59532A0E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A9E246AF-ED28-DD40-890C-369C59532A0E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 53 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/869FF15A-0C0F-E241-9A97-3FBAD14BE9EB.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/869FF15A-0C0F-E241-9A97-3FBAD14BE9EB.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 54 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/403BF8FF-1F10-804A-B22E-08ED36C6BEA4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/403BF8FF-1F10-804A-B22E-08ED36C6BEA4.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 55 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/08C51685-3DF2-5B40-85CE-EB5F4D3A71F0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/08C51685-3DF2-5B40-85CE-EB5F4D3A71F0.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 56 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/FE85AB92-A948-A046-8F80-CFE4D5F52FD4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/FE85AB92-A948-A046-8F80-CFE4D5F52FD4.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 57 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BAA18453-98A8-A144-AE1A-8A4CD78DCB69.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BAA18453-98A8-A144-AE1A-8A4CD78DCB69.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 58 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/C2EB1678-0F16-914E-B1DB-243FFF17CD35.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/C2EB1678-0F16-914E-B1DB-243FFF17CD35.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 59 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/856B6281-A18D-0949-81C8-0FEA2A3EE9C8.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/856B6281-A18D-0949-81C8-0FEA2A3EE9C8.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 60 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/D5826292-9565-B044-9A4D-BFEB5923D058.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/D5826292-9565-B044-9A4D-BFEB5923D058.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 61 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/2B3B8749-1BE2-DD41-B6FF-5E6AE745EB37.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/2B3B8749-1BE2-DD41-B6FF-5E6AE745EB37.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 62 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/E5D14B57-ACBA-7444-982D-A523D55B4556.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/E5D14B57-ACBA-7444-982D-A523D55B4556.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 63 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9AD72D40-2BCF-7A48-9EED-1EF13E5CE2F5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9AD72D40-2BCF-7A48-9EED-1EF13E5CE2F5.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 64 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/48F5A863-A993-7349-8B7E-3B8911C0B336.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/48F5A863-A993-7349-8B7E-3B8911C0B336.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 65 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/982F2F99-8A20-094A-89C3-BCD41AF7EA46.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/982F2F99-8A20-094A-89C3-BCD41AF7EA46.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 66 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F827DCA3-4F95-7944-914B-688D82AA2204.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F827DCA3-4F95-7944-914B-688D82AA2204.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 67 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/90562DEF-AE73-C447-A85C-4A0D182B7122.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/90562DEF-AE73-C447-A85C-4A0D182B7122.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 68 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/5A6EC635-F723-1047-A293-08E5EA554CFF.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/5A6EC635-F723-1047-A293-08E5EA554CFF.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 69 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/B12C91B4-EC2B-ED4D-B3B5-F45EF564F2D6.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/B12C91B4-EC2B-ED4D-B3B5-F45EF564F2D6.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 70 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/183708BF-ED25-854C-8A48-2C7FD311FCB0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/183708BF-ED25-854C-8A48-2C7FD311FCB0.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 71 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/ACC4BAB1-462E-744B-9906-A277FC2E18BB.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/ACC4BAB1-462E-744B-9906-A277FC2E18BB.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 72 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/1A6C20FC-55EB-3048-BF67-BC97E5F603F2.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/1A6C20FC-55EB-3048-BF67-BC97E5F603F2.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 73 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/56F6EB22-E4E9-DE49-BBBF-6A39C5B65FC1.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/56F6EB22-E4E9-DE49-BBBF-6A39C5B65FC1.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 74 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/ABC0A1C4-658C-5C42-90D1-39ACC4639800.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/ABC0A1C4-658C-5C42-90D1-39ACC4639800.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 75 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A84D05E0-E632-5B47-965E-D23EED9F7A2D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A84D05E0-E632-5B47-965E-D23EED9F7A2D.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 76 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/B360A25D-7BED-4C4E-95FA-0AE31B6DA643.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/B360A25D-7BED-4C4E-95FA-0AE31B6DA643.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 77 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/35E4A203-642D-F048-AF35-17DDEAC97B22.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/35E4A203-642D-F048-AF35-17DDEAC97B22.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 78 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/AC1B1355-8475-014F-A5DA-FEC649D93994.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/AC1B1355-8475-014F-A5DA-FEC649D93994.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 79 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/51A883C5-C3A5-F44B-8A55-32F762F1B76F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/51A883C5-C3A5-F44B-8A55-32F762F1B76F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 80 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/EC90C939-C056-994A-A1EB-ABE87288D9D2.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/EC90C939-C056-994A-A1EB-ABE87288D9D2.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 81 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/610CA5E3-A469-1846-AC55-B587DC014DD1.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/610CA5E3-A469-1846-AC55-B587DC014DD1.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 82 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/D61F5741-8DA4-434E-9DFF-ED3155826A10.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/D61F5741-8DA4-434E-9DFF-ED3155826A10.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 83 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/8F7CF509-81D7-AE40-9F81-8C4CF5FE0AE7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/8F7CF509-81D7-AE40-9F81-8C4CF5FE0AE7.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 84 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A39B7FF8-53EA-CA4A-868D-0503850EA462.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A39B7FF8-53EA-CA4A-868D-0503850EA462.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 85 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/5CB197D0-2E9F-8E40-8CAE-28C8AD820083.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/5CB197D0-2E9F-8E40-8CAE-28C8AD820083.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 86 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/DC314A87-35D1-1747-8941-430687115FE8.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/DC314A87-35D1-1747-8941-430687115FE8.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 87 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/EE2DDCB4-87BA-0C4F-A23E-7D3F0835882E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/EE2DDCB4-87BA-0C4F-A23E-7D3F0835882E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 88 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/EC6C7502-255B-444A-BB05-37D514FF0ABC.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/EC6C7502-255B-444A-BB05-37D514FF0ABC.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 89 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9D112A29-A4BA-E040-BD0E-14CB38E2F527.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9D112A29-A4BA-E040-BD0E-14CB38E2F527.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 90 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BDBC5E7E-CA32-6244-94D8-2EE6958F2475.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BDBC5E7E-CA32-6244-94D8-2EE6958F2475.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 91 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/3792677C-7B20-4F45-A876-8527A9B2BD19.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/3792677C-7B20-4F45-A876-8527A9B2BD19.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 92 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/1BA299A9-F0D6-F846-8C1F-4E0E3652078E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/1BA299A9-F0D6-F846-8C1F-4E0E3652078E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 93 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7F547490-3A0A-3F4C-BF6E-4C024E925D73.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7F547490-3A0A-3F4C-BF6E-4C024E925D73.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 94 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/0405CA3F-924C-6643-8AB7-0188A6B362F4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/0405CA3F-924C-6643-8AB7-0188A6B362F4.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 95 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/D63C66BC-D5F5-CE4D-B989-E1E504E34D6A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/D63C66BC-D5F5-CE4D-B989-E1E504E34D6A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 96 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/6BBC7219-1E39-0A47-B00F-6FA4705F55F7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/6BBC7219-1E39-0A47-B00F-6FA4705F55F7.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 97 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/DC7E17DF-A67D-B74A-A9D1-7338F1EC122D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/DC7E17DF-A67D-B74A-A9D1-7338F1EC122D.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 98 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/09C075F2-2328-4A46-AB8D-F6BC2FF5CC44.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/09C075F2-2328-4A46-AB8D-F6BC2FF5CC44.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 99 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/3AC1F462-A5DA-3B41-8188-84DD55937B1E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/3AC1F462-A5DA-3B41-8188-84DD55937B1E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 100 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/099845AE-8499-7040-B1E2-2E6C877909DF.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/099845AE-8499-7040-B1E2-2E6C877909DF.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 101 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/8012B8EA-85FD-7240-BC9E-E0EEFF199562.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/8012B8EA-85FD-7240-BC9E-E0EEFF199562.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 102 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/17A2581D-F031-1D4C-9258-C681C330EDC4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/17A2581D-F031-1D4C-9258-C681C330EDC4.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 103 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/042475AE-DEF6-6249-A732-B74B28E8EDDB.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/042475AE-DEF6-6249-A732-B74B28E8EDDB.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 104 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/ECC05FAE-4EEE-1146-9840-554610E40696.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/ECC05FAE-4EEE-1146-9840-554610E40696.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 105 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7B0A2513-44E5-E647-A21D-0F8EDB596234.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7B0A2513-44E5-E647-A21D-0F8EDB596234.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 106 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/0032857C-6251-3A40-BA10-D0982531B7A1.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/0032857C-6251-3A40-BA10-D0982531B7A1.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 107 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/1730D8A9-90D1-584E-A884-2840D16E01C5.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/1730D8A9-90D1-584E-A884-2840D16E01C5.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 108 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/EFDDDCD9-5992-DD4D-A2D6-6C7F68BACDF7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/EFDDDCD9-5992-DD4D-A2D6-6C7F68BACDF7.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 109 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/E174C328-85D2-FB41-B66A-36F6DDE001E9.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/E174C328-85D2-FB41-B66A-36F6DDE001E9.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 110 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BE4A5616-04C7-ED42-B0E8-8780DBD05E2D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BE4A5616-04C7-ED42-B0E8-8780DBD05E2D.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 111 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/218ECF70-8314-A242-A652-E244B43EBB30.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/218ECF70-8314-A242-A652-E244B43EBB30.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 112 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F58D0987-8EFA-0047-B22B-99E1C929FB53.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F58D0987-8EFA-0047-B22B-99E1C929FB53.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 113 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/FBD21C4F-CBEE-734F-A202-84241DCDC066.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/FBD21C4F-CBEE-734F-A202-84241DCDC066.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 114 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7327B0C7-30A0-8549-BF64-8C6247AF3CD2.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7327B0C7-30A0-8549-BF64-8C6247AF3CD2.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 115 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/953BF08A-FC00-F947-98CA-960C80931B85.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/953BF08A-FC00-F947-98CA-960C80931B85.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 116 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/DAFA7F68-C1C0-7C4F-B226-A8717E189C49.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/DAFA7F68-C1C0-7C4F-B226-A8717E189C49.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 117 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/50B1ADA0-6C52-5446-982D-D25B181C94F7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/50B1ADA0-6C52-5446-982D-D25B181C94F7.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 118 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9FF5029F-CE11-1E45-BB7E-BB0CEEB7212E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9FF5029F-CE11-1E45-BB7E-BB0CEEB7212E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 119 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/509DDCD3-AF97-3C45-A610-096014F95F56.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/509DDCD3-AF97-3C45-A610-096014F95F56.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 120 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BDDFCDB2-C882-5441-83C0-E0FBE7E6A49E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BDDFCDB2-C882-5441-83C0-E0FBE7E6A49E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 121 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/B48426AD-3434-264A-86AB-7BFB2A704B9C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/B48426AD-3434-264A-86AB-7BFB2A704B9C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 122 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/2F54F086-CCB0-7F45-9085-F2A3FDEBD96B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/2F54F086-CCB0-7F45-9085-F2A3FDEBD96B.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 123 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/B35D112B-6824-BC46-89FB-297AAE885479.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/B35D112B-6824-BC46-89FB-297AAE885479.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 124 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/E11FBC64-351D-714F-B6DB-8BCA0C7BA4A1.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/E11FBC64-351D-714F-B6DB-8BCA0C7BA4A1.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 125 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/710F91AF-C63C-9340-B939-C0C98B6218A2.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/710F91AF-C63C-9340-B939-C0C98B6218A2.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 126 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/CB3F07AF-6BDC-F540-B7EA-06D2E1E2A0E3.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/CB3F07AF-6BDC-F540-B7EA-06D2E1E2A0E3.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 127 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/D689C135-8E90-3D4E-AE7F-8EA72256D6DD.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/D689C135-8E90-3D4E-AE7F-8EA72256D6DD.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 128 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9B9A0FB3-22BB-DB43-A03E-B51338D34FFA.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9B9A0FB3-22BB-DB43-A03E-B51338D34FFA.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 129 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/36712E1A-5C66-854E-8FAD-B97C1232F83C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/36712E1A-5C66-854E-8FAD-B97C1232F83C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 130 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/6B091DC8-2C8B-3E4C-9A13-A1727E75351D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/6B091DC8-2C8B-3E4C-9A13-A1727E75351D.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 131 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/0217AA0A-4692-0D4D-A1BD-9BBB70D8BAEA.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/0217AA0A-4692-0D4D-A1BD-9BBB70D8BAEA.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 132 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/C62F8FE2-1BE2-B74E-80A4-542C8A4671D3.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/C62F8FE2-1BE2-B74E-80A4-542C8A4671D3.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 133 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/4F74FBA0-588F-1344-AB46-0837957907F4.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/4F74FBA0-588F-1344-AB46-0837957907F4.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 134 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/1EF1D440-09DD-F443-A310-6C7C77FF23C2.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/1EF1D440-09DD-F443-A310-6C7C77FF23C2.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 135 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7AAE10CE-C97F-274E-898F-AFEC9168EB1F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7AAE10CE-C97F-274E-898F-AFEC9168EB1F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 136 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/C6663C3E-A7DE-9A47-BFF8-3AB4E3EE16BD.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/C6663C3E-A7DE-9A47-BFF8-3AB4E3EE16BD.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 137 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/6493C95B-8954-E245-BA5E-432D201343CF.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/6493C95B-8954-E245-BA5E-432D201343CF.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 138 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/587CB5BE-9DE6-F143-B5B1-08BAD68285F3.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/587CB5BE-9DE6-F143-B5B1-08BAD68285F3.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 139 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/55DD7402-86BC-AF42-AA6E-152354068833.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/55DD7402-86BC-AF42-AA6E-152354068833.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 140 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/0CFA48CB-586E-E448-A406-7FB1113F6596.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/0CFA48CB-586E-E448-A406-7FB1113F6596.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 141 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/C21E41AA-56BC-DA42-ABE9-B4140BCD128B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/C21E41AA-56BC-DA42-ABE9-B4140BCD128B.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 142 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A9159588-F8B5-514C-9E37-C1C8B117E863.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A9159588-F8B5-514C-9E37-C1C8B117E863.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 143 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7E9384B1-FD3C-6E4A-B296-3FC757D34F32.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7E9384B1-FD3C-6E4A-B296-3FC757D34F32.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 144 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/C89BCC56-566A-5048-B33F-371377A52E1C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/C89BCC56-566A-5048-B33F-371377A52E1C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 145 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/65EFD6BE-2725-5A42-AA35-8F80C2662A85.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/65EFD6BE-2725-5A42-AA35-8F80C2662A85.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 146 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/5EB4760C-F063-8E49-9681-31A6BEE19F4A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/5EB4760C-F063-8E49-9681-31A6BEE19F4A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 147 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/E43CF2AC-C00B-7744-8080-25B3B8E576D9.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/E43CF2AC-C00B-7744-8080-25B3B8E576D9.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 148 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/0E7CA1D4-807D-A74F-8D10-B1A4F341D950.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/0E7CA1D4-807D-A74F-8D10-B1A4F341D950.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 149 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A35F2793-8722-6D43-A856-D14F35E7A2E0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A35F2793-8722-6D43-A856-D14F35E7A2E0.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 150 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/41959033-3CCE-844A-8762-E2CADE5A73CE.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/41959033-3CCE-844A-8762-E2CADE5A73CE.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 151 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/68D9A07C-592A-5249-8156-95A45C0A8130.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/68D9A07C-592A-5249-8156-95A45C0A8130.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 152 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7D181445-92A0-B549-A34C-668B2CADBA23.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7D181445-92A0-B549-A34C-668B2CADBA23.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 153 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/415332C9-4179-BF47-A696-F84B8027EC57.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/415332C9-4179-BF47-A696-F84B8027EC57.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 154 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F7B60CEB-2D54-6E45-B5BA-6B818AFE556C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F7B60CEB-2D54-6E45-B5BA-6B818AFE556C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 155 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/31DA93C3-FEBB-3D4C-88C8-A0A820070D6E.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/31DA93C3-FEBB-3D4C-88C8-A0A820070D6E.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 156 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/8DCC20DF-1F67-F644-85D3-65B277BE3A19.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/8DCC20DF-1F67-F644-85D3-65B277BE3A19.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 157 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/019E2F1D-A614-4148-9FE1-495F93D4E3CC.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/019E2F1D-A614-4148-9FE1-495F93D4E3CC.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 158 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A362E33C-1A32-A144-A2A7-48C6C7E14E77.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A362E33C-1A32-A144-A2A7-48C6C7E14E77.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 159 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/D2567076-B3BB-A14B-B32E-3DB32AE75F45.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/D2567076-B3BB-A14B-B32E-3DB32AE75F45.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 160 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/1693BF88-68D8-F04E-B869-B7BB18C6F682.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/1693BF88-68D8-F04E-B869-B7BB18C6F682.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 161 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A87428C4-2E7D-4D47-A5A2-50B4A865C3B6.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A87428C4-2E7D-4D47-A5A2-50B4A865C3B6.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 162 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/1DEE1267-1FAE-8447-BDF2-8B50C9670932.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/1DEE1267-1FAE-8447-BDF2-8B50C9670932.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 163 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9A5AED2D-5E89-1648-A301-8B5331461B97.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9A5AED2D-5E89-1648-A301-8B5331461B97.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 164 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7A10CA75-D47D-C945-B0F9-8AF3B8076490.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7A10CA75-D47D-C945-B0F9-8AF3B8076490.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 165 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/360032D6-66CF-F448-9FA9-8EED0779E0BE.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/360032D6-66CF-F448-9FA9-8EED0779E0BE.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 166 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/21060633-84DD-7247-9368-5442699C6113.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/21060633-84DD-7247-9368-5442699C6113.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 167 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/12C949D0-358D-DF4A-99A3-741821707BA8.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/12C949D0-358D-DF4A-99A3-741821707BA8.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 168 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/2CFDFF96-5367-904C-A481-EF393025BA75.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/2CFDFF96-5367-904C-A481-EF393025BA75.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 169 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/00BB676A-24AE-B848-9054-FC3CEAD7DF36.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/00BB676A-24AE-B848-9054-FC3CEAD7DF36.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 170 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/39B5BE3A-1DD8-6E4C-9EB9-9B1FA82D843C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/39B5BE3A-1DD8-6E4C-9EB9-9B1FA82D843C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 171 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/5BC26124-BE41-B44C-8016-139F2E66CC41.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/5BC26124-BE41-B44C-8016-139F2E66CC41.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 172 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/7E0E3DCB-8834-5347-93C5-F09887F306CA.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/7E0E3DCB-8834-5347-93C5-F09887F306CA.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 173 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/EF213C05-D6E7-1E40-B6C1-9789B98BE95C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/EF213C05-D6E7-1E40-B6C1-9789B98BE95C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 174 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/BC10967A-DD6F-654B-A302-9BE72A67CB38.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/BC10967A-DD6F-654B-A302-9BE72A67CB38.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 175 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/883B37D5-FBEC-204E-AD4D-4B166548C2B0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/883B37D5-FBEC-204E-AD4D-4B166548C2B0.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 176 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9CBB51FB-32C6-9F45-85F8-CC20251D650A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9CBB51FB-32C6-9F45-85F8-CC20251D650A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 177 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/26073258-5607-B044-B03F-A3C727F3A58A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/26073258-5607-B044-B03F-A3C727F3A58A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 178 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/26C5E545-5A05-854E-8958-817ED32F6A9B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/26C5E545-5A05-854E-8958-817ED32F6A9B.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 179 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/301CA59B-E80F-854E-A8B9-D219FC4BA1F0.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/301CA59B-E80F-854E-A8B9-D219FC4BA1F0.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 180 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9C78E1D5-296D-C946-88A9-A4C2F30FB1EC.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9C78E1D5-296D-C946-88A9-A4C2F30FB1EC.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 181 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/13ADE554-690C-2341-A408-F4E2F4FD926C.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/13ADE554-690C-2341-A408-F4E2F4FD926C.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 182 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F92A53B1-C044-A140-A972-C0B520C9AC7F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F92A53B1-C044-A140-A972-C0B520C9AC7F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 183 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/400223C2-7306-8A4C-90CA-ADDB534D6AF7.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/400223C2-7306-8A4C-90CA-ADDB534D6AF7.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 184 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/ABF93D80-096A-5948-B7F1-A4FABE021899.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/ABF93D80-096A-5948-B7F1-A4FABE021899.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 185 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/A40FFBFB-9F14-F640-8978-BA5D36A5DF2A.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/A40FFBFB-9F14-F640-8978-BA5D36A5DF2A.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 186 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/3623E38A-12AB-994E-B5D3-921773097CFD.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/3623E38A-12AB-994E-B5D3-921773097CFD.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 187 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/F064021C-0A63-DB48-BA5B-F39F8FFFF7B3.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/F064021C-0A63-DB48-BA5B-F39F8FFFF7B3.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 188 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/1A114927-ECC8-0B48-934E-11194237719B.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/1A114927-ECC8-0B48-934E-11194237719B.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 189 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/9AF3EA09-8E4C-044F-B72B-0336C6085F2D.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/9AF3EA09-8E4C-044F-B72B-0336C6085F2D.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 190 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/62FA54EE-6312-B941-B3BE-5B12AB42D5F9.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/62FA54EE-6312-B941-B3BE-5B12AB42D5F9.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
if [ $1 -eq 191 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/data/Run2017G/SingleMuon/NANOAOD/UL2017_MiniAODv2_NanoAODv9_GT36-v2/2540000/FAB9EDDB-F59E-3742-9273-EA46999F232F.root -o /eos/user/a/atahmad/run2_skims/Data_2017/SingleMuonG_loose/FAB9EDDB-F59E-3742-9273-EA46999F232F.root --nickName SingleMuonG -y 2017 -s DCH -w 0 -j 0 -e UL -d Data --cuts tight
fi
