#!/bin/sh
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/
export X509_USER_PROXY=/afs/cern.ch/user/a/atahmad/.grid_proxy/x509up.pem
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=el9_amd64_gcc11
eval `scramv1 runtime -sh`
cd /afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/

if [ $1 -eq 0 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/579DFDD2-C271-6A47-8E48-0F66F0E00E21.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/579DFDD2-C271-6A47-8E48-0F66F0E00E21.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 1 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/5CA732C4-6362-0B4C-AE07-75A838E92736.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/5CA732C4-6362-0B4C-AE07-75A838E92736.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 2 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/58E0E7E9-0AB2-8849-8DD7-7E92786A2FD8.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/58E0E7E9-0AB2-8849-8DD7-7E92786A2FD8.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 3 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/ECA64D15-8D50-F74E-B2D1-E8033F1BAAAA.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/ECA64D15-8D50-F74E-B2D1-E8033F1BAAAA.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 4 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/BEF5FB2C-6EC6-F44D-AE54-89A6EFAE2192.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/BEF5FB2C-6EC6-F44D-AE54-89A6EFAE2192.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 5 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/70067B26-BFB5-2842-9982-6BBABDE8692C.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/70067B26-BFB5-2842-9982-6BBABDE8692C.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 6 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/D5E0D68F-E480-0F41-A2AC-920981682072.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/D5E0D68F-E480-0F41-A2AC-920981682072.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 7 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/F30AF326-101F-904F-85D0-69FC18692456.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/F30AF326-101F-904F-85D0-69FC18692456.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 8 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/BF9D1BDD-0674-BA42-8236-6266232E415B.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/BF9D1BDD-0674-BA42-8236-6266232E415B.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 9 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/531E3F51-DFBD-B142-83A0-AD13BAD284D1.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/531E3F51-DFBD-B142-83A0-AD13BAD284D1.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 10 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/146E115C-3F77-9549-8344-A7D0138D69D9.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/146E115C-3F77-9549-8344-A7D0138D69D9.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 11 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/E7E3B6BA-7138-BD43-8B88-0F0E77E4444A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/E7E3B6BA-7138-BD43-8B88-0F0E77E4444A.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 12 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/3B1B1547-5927-AF44-A6A6-10C9ADC5A5DF.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/3B1B1547-5927-AF44-A6A6-10C9ADC5A5DF.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 13 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/3A13CCDC-03FD-3844-804C-8F154C0F5EFF.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/3A13CCDC-03FD-3844-804C-8F154C0F5EFF.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 14 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/E148CCE4-FF9F-FD4B-86C3-2E60621784DE.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/E148CCE4-FF9F-FD4B-86C3-2E60621784DE.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 15 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/D039A8C8-0346-BE4A-A0D7-28417DC86CFF.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/D039A8C8-0346-BE4A-A0D7-28417DC86CFF.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 16 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/379FBE11-4684-ED4F-92A3-880E5A489B96.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/379FBE11-4684-ED4F-92A3-880E5A489B96.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 17 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/375F6001-5BB6-E94B-9D8B-67D5C51F606A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/375F6001-5BB6-E94B-9D8B-67D5C51F606A.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 18 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/E040A516-380B-4743-B6DF-503A79F49C1A.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/E040A516-380B-4743-B6DF-503A79F49C1A.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 19 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/3136BAFA-A77B-AD49-B9BF-C624BAFC34FE.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/3136BAFA-A77B-AD49-B9BF-C624BAFC34FE.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 20 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/45BC88CF-897B-1243-9CFE-56DAECFF2ABA.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/45BC88CF-897B-1243-9CFE-56DAECFF2ABA.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
if [ $1 -eq 21 ]; then
  mkdir -p logs /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose
  python3 DCH_test.py -f root://cms-xrd-global.cern.ch//store/mc/RunIISummer20UL17NanoAODv9/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/NANOAODSIM/FSUL17_FSUL17_106X_mc2017_realistic_v9-v3/2810000/1638152F-7BE4-8E44-9937-B950B628A2C7.root -o /eos/user/a/atahmad/run2_skims/MC_2017/DYJetsToLLM50_part3_loose/1638152F-7BE4-8E44-9937-B950B628A2C7.root --nickName DYJetsToLLM50_part3 -y 2017 -s DCH -w 0 -j 0 -e UL -d MC --cuts tight
fi
