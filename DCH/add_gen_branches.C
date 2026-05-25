#include <TFile.h>
#include <TTree.h>
#include <TKey.h>
#include <TSystem.h>
#include <ROOT/TProcessExecutor.hxx>

#include <iostream>
#include <fstream>
#include <vector>
#include <map>

using namespace std;

string BASE="/eos/user/a/atahmad/run2_skims";
string OUT="/eos/user/a/atahmad/run2_skims/updated_MC";

vector<string> YEARS={"MC_2016","MC_2017","MC_2018"};

map<string,string> getDASFiles(string dataset)
{
    map<string,string> files;

    string cmd="dasgoclient --query=\"file dataset="+dataset+"\"";

    FILE *pipe=gSystem->OpenPipe(cmd.c_str(),"r");
    char buffer[1024];

    while(fgets(buffer,1024,pipe))
    {
        string f=buffer;
        f.erase(remove(f.begin(),f.end(),'\n'),f.end());

        string base=f.substr(f.find_last_of("/")+1);
        files[base]="root://cms-xrd-global.cern.ch/"+f;
    }

    gSystem->ClosePipe(pipe);
    return files;
}

int processFile(vector<string> job)
{
    string skimPath=job[0];
    string nanoPath=job[1];
    string outPath =job[2];

    cout<<"Processing "<<skimPath<<endl;

    TFile *skimFile=TFile::Open(skimPath.c_str());
    if(!skimFile) return 0;

    TTree *skimTree=(TTree*)skimFile->Get("Events");

    TFile *nanoFile=TFile::Open(nanoPath.c_str());
    if(!nanoFile) return 0;

    TTree *nanoTree=(TTree*)nanoFile->Get("Events");

    nanoTree->SetBranchStatus("*",0);

    nanoTree->SetBranchStatus("luminosityBlock",1);
    nanoTree->SetBranchStatus("event",1);

    nanoTree->SetBranchStatus("nGenPart",1);
    nanoTree->SetBranchStatus("GenPart_pt",1);
    nanoTree->SetBranchStatus("GenPart_eta",1);
    nanoTree->SetBranchStatus("GenPart_phi",1);
    nanoTree->SetBranchStatus("GenPart_mass",1);
    nanoTree->SetBranchStatus("GenPart_pdgId",1);
    nanoTree->SetBranchStatus("GenPart_status",1);
    nanoTree->SetBranchStatus("GenPart_statusFlags",1);
    nanoTree->SetBranchStatus("GenPart_genPartIdxMother",1);

    nanoTree->SetBranchStatus("nGenVisTau",1);
    nanoTree->SetBranchStatus("GenVisTau_pt",1);
    nanoTree->SetBranchStatus("GenVisTau_eta",1);
    nanoTree->SetBranchStatus("GenVisTau_phi",1);
    nanoTree->SetBranchStatus("GenVisTau_mass",1);
    nanoTree->SetBranchStatus("GenVisTau_charge",1);
    nanoTree->SetBranchStatus("GenVisTau_status",1);
    nanoTree->SetBranchStatus("GenVisTau_genPartIdxMother",1);

    nanoTree->SetCacheSize(100*1024*1024);
    nanoTree->BuildIndex("luminosityBlock","event");

    Int_t lumi;
    ULong64_t evt;

    skimTree->SetBranchAddress("lumi",&lumi);
    skimTree->SetBranchAddress("evt",&evt);

    UInt_t nGenPart;
    Float_t GenPart_pt[5000];
    Float_t GenPart_eta[5000];
    Float_t GenPart_phi[5000];
    Float_t GenPart_mass[5000];
    Int_t   GenPart_pdgId[5000];
    Int_t   GenPart_status[5000];
    Int_t   GenPart_statusFlags[5000];
    Int_t   GenPart_genPartIdxMother[5000];

    UInt_t nGenVisTau;
    Float_t GenVisTau_pt[100];
    Float_t GenVisTau_eta[100];
    Float_t GenVisTau_phi[100];
    Float_t GenVisTau_mass[100];
    Int_t   GenVisTau_charge[100];
    Int_t   GenVisTau_status[100];
    Int_t   GenVisTau_genPartIdxMother[100];

    nanoTree->SetBranchAddress("nGenPart",&nGenPart);
    nanoTree->SetBranchAddress("GenPart_pt",GenPart_pt);
    nanoTree->SetBranchAddress("GenPart_eta",GenPart_eta);
    nanoTree->SetBranchAddress("GenPart_phi",GenPart_phi);
    nanoTree->SetBranchAddress("GenPart_mass",GenPart_mass);
    nanoTree->SetBranchAddress("GenPart_pdgId",GenPart_pdgId);
    nanoTree->SetBranchAddress("GenPart_status",GenPart_status);
    nanoTree->SetBranchAddress("GenPart_statusFlags",GenPart_statusFlags);
    nanoTree->SetBranchAddress("GenPart_genPartIdxMother",GenPart_genPartIdxMother);

    nanoTree->SetBranchAddress("nGenVisTau",&nGenVisTau);
    nanoTree->SetBranchAddress("GenVisTau_pt",GenVisTau_pt);
    nanoTree->SetBranchAddress("GenVisTau_eta",GenVisTau_eta);
    nanoTree->SetBranchAddress("GenVisTau_phi",GenVisTau_phi);
    nanoTree->SetBranchAddress("GenVisTau_mass",GenVisTau_mass);
    nanoTree->SetBranchAddress("GenVisTau_charge",GenVisTau_charge);
    nanoTree->SetBranchAddress("GenVisTau_status",GenVisTau_status);
    nanoTree->SetBranchAddress("GenVisTau_genPartIdxMother",GenVisTau_genPartIdxMother);

    TFile *outFile=TFile::Open(outPath.c_str(),"RECREATE");

    TIter next(skimFile->GetListOfKeys());
    TKey *key;

    while((key=(TKey*)next()))
    {
        string name=key->GetName();
        if(name=="Events") continue;

        TObject *obj=key->ReadObj();
        outFile->WriteObject(obj,name.c_str());
    }

    TTree *newTree=skimTree->CloneTree();

    TTree gentree("gentree","generator branches");

    UInt_t out_nGenPart;
    vector<float> out_GenPart_pt;
    vector<float> out_GenPart_eta;
    vector<float> out_GenPart_phi;
    vector<float> out_GenPart_mass;
    vector<int>   out_GenPart_pdgId;
    vector<int>   out_GenPart_status;
    vector<int>   out_GenPart_statusFlags;
    vector<int>   out_GenPart_genPartIdxMother;

    UInt_t out_nGenVisTau;
    vector<float> out_GenVisTau_pt;
    vector<float> out_GenVisTau_eta;
    vector<float> out_GenVisTau_phi;
    vector<float> out_GenVisTau_mass;
    vector<int>   out_GenVisTau_charge;
    vector<int>   out_GenVisTau_status;
    vector<int>   out_GenVisTau_genPartIdxMother;

    gentree.Branch("nGenPart",&out_nGenPart);
    gentree.Branch("GenPart_pt",&out_GenPart_pt);
    gentree.Branch("GenPart_eta",&out_GenPart_eta);
    gentree.Branch("GenPart_phi",&out_GenPart_phi);
    gentree.Branch("GenPart_mass",&out_GenPart_mass);
    gentree.Branch("GenPart_pdgId",&out_GenPart_pdgId);
    gentree.Branch("GenPart_status",&out_GenPart_status);
    gentree.Branch("GenPart_statusFlags",&out_GenPart_statusFlags);
    gentree.Branch("GenPart_genPartIdxMother",&out_GenPart_genPartIdxMother);

    gentree.Branch("nGenVisTau",&out_nGenVisTau);
    gentree.Branch("GenVisTau_pt",&out_GenVisTau_pt);
    gentree.Branch("GenVisTau_eta",&out_GenVisTau_eta);
    gentree.Branch("GenVisTau_phi",&out_GenVisTau_phi);
    gentree.Branch("GenVisTau_mass",&out_GenVisTau_mass);
    gentree.Branch("GenVisTau_charge",&out_GenVisTau_charge);
    gentree.Branch("GenVisTau_status",&out_GenVisTau_status);
    gentree.Branch("GenVisTau_genPartIdxMother",&out_GenVisTau_genPartIdxMother);

    Long64_t n=skimTree->GetEntries();

    for(Long64_t i=0;i<n;i++)
    {
        skimTree->GetEntry(i);

        out_GenPart_pt.clear();
        out_GenPart_eta.clear();
        out_GenPart_phi.clear();
        out_GenPart_mass.clear();
        out_GenPart_pdgId.clear();
        out_GenPart_status.clear();
        out_GenPart_statusFlags.clear();
        out_GenPart_genPartIdxMother.clear();

        out_GenVisTau_pt.clear();
        out_GenVisTau_eta.clear();
        out_GenVisTau_phi.clear();
        out_GenVisTau_mass.clear();
        out_GenVisTau_charge.clear();
        out_GenVisTau_status.clear();
        out_GenVisTau_genPartIdxMother.clear();

        Long64_t nanoEntry=nanoTree->GetEntryNumberWithIndex(lumi,evt);

        if(nanoEntry>=0)
        {
            nanoTree->GetEntry(nanoEntry);

            out_nGenPart=nGenPart;

            for(UInt_t j=0;j<nGenPart;j++)
            {
                out_GenPart_pt.push_back(GenPart_pt[j]);
                out_GenPart_eta.push_back(GenPart_eta[j]);
                out_GenPart_phi.push_back(GenPart_phi[j]);
                out_GenPart_mass.push_back(GenPart_mass[j]);
                out_GenPart_pdgId.push_back(GenPart_pdgId[j]);
                out_GenPart_status.push_back(GenPart_status[j]);
                out_GenPart_statusFlags.push_back(GenPart_statusFlags[j]);
                out_GenPart_genPartIdxMother.push_back(GenPart_genPartIdxMother[j]);
            }

            out_nGenVisTau=nGenVisTau;

            for(UInt_t j=0;j<nGenVisTau;j++)
            {
                out_GenVisTau_pt.push_back(GenVisTau_pt[j]);
                out_GenVisTau_eta.push_back(GenVisTau_eta[j]);
                out_GenVisTau_phi.push_back(GenVisTau_phi[j]);
                out_GenVisTau_mass.push_back(GenVisTau_mass[j]);
                out_GenVisTau_charge.push_back(GenVisTau_charge[j]);
                out_GenVisTau_status.push_back(GenVisTau_status[j]);
                out_GenVisTau_genPartIdxMother.push_back(GenVisTau_genPartIdxMother[j]);
            }
        }

        gentree.Fill();
    }

    outFile->cd();
    newTree->Write();
    gentree.Write();

    outFile->Close();
    skimFile->Close();
    nanoFile->Close();

    return 0;
}

void processSample(string sampleDir,string dataset,string outDir)
{
    auto dasFiles=getDASFiles(dataset);

    vector<vector<string>> jobs;

    void *filep=gSystem->OpenDirectory(sampleDir.c_str());
    const char *fname;

    while((fname=gSystem->GetDirEntry(filep)))
    {
        string file=fname;

        if(file.find(".root")==string::npos) continue;
        if(!dasFiles.count(file)) continue;

        string skimPath=sampleDir+"/"+file;
        string nanoPath=dasFiles[file];
        string outPath =outDir+"/"+file;

        if(!gSystem->AccessPathName(outPath.c_str()))
        {
            cout<<"Skipping existing "<<outPath<<endl;
            continue;
        }

        jobs.push_back({skimPath,nanoPath,outPath});
    }

    if(jobs.size()==0)
    {
        cout<<"All files already processed"<<endl;
        return;
    }

    ROOT::TProcessExecutor pool(8);
    pool.Map(processFile,jobs);
}

void add_gen_branches(string year)
{
    string yearDir=BASE+"/"+year;

    cout<<"Processing year "<<year<<endl;

    void *dirp=gSystem->OpenDirectory(yearDir.c_str());
    const char *sample;

    while((sample=gSystem->GetDirEntry(dirp)))
    {
        string sampleName=sample;

        if(sampleName=="."||sampleName=="..") continue;

        string sampleDir=yearDir+"/"+sampleName;

        if(gSystem->AccessPathName(sampleDir.c_str())) continue;

        string outDir=OUT+"/"+year+"/"+sampleName;

        gSystem->mkdir(outDir.c_str(),true);

        string readme_src=sampleDir+"/README.txt";
        string readme_dst=outDir+"/README.txt";

        if(!gSystem->AccessPathName(readme_src.c_str()) &&
           gSystem->AccessPathName(readme_dst.c_str()))
            gSystem->CopyFile(readme_src.c_str(),readme_dst.c_str(),true);

        ifstream f(readme_src);

        string line;
        getline(f,line);

        string dataset=line.substr(line.find_last_of(",")+1);

        processSample(sampleDir,dataset,outDir);
    }

    cout<<"Finished "<<year<<endl;
}