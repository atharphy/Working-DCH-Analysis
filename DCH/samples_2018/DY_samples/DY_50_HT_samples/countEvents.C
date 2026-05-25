// countEvents.C
#include <TChain.h>
#include <TString.h>
#include <iostream>
#include <fstream>
#include <vector>

void countEvents() {
    // List of all your sample txt files
    std::vector<TString> samples = {
        "DYJetsToLL_M-50_HT-70to100.txt",
        "DYJetsToLL_M-50_HT-100to200.txt",
        "DYJetsToLL_M-50_HT-200to400.txt",
        "DYJetsToLL_M-50_HT-400to600.txt",
        "DYJetsToLL_M-50_HT-600to800.txt",
        "DYJetsToLL_M-50_HT-800to1200.txt",
        "DYJetsToLL_M-50_HT-1200to2500.txt",
        "DYJetsToLL_M-50_HT-2500toInf.txt"
    };

    for (auto & txt : samples) {
        TChain chain("Events");
        std::ifstream infile(txt.Data());
        if (!infile.is_open()) {
            std::cerr << "Failed to open " << txt << std::endl;
            continue;
        }
        TString path;
        while (infile >> path) {
            chain.Add(path);
        }
        infile.close();

        Long64_t nEnt = chain.GetEntries();
        std::cout << txt << " : " << nEnt << " events" << std::endl;
    }
}
