import ROOT
import correctionlib
import numpy as np
import os

ROOT.gStyle.SetOptStat(0)

outdir = "sf_plots"
os.makedirs(outdir, exist_ok=True)

configs = [
    ("2016preVFP","NUM_IsoMu24_or_IsoTkMu24_DEN_CutBasedIdTight_and_PFIsoTight",26),
    ("2016","NUM_IsoMu24_or_IsoTkMu24_DEN_CutBasedIdTight_and_PFIsoTight",26),
    ("2017","NUM_IsoMu27_DEN_CutBasedIdTight_and_PFIsoTight",29),
    ("2018","NUM_IsoMu24_DEN_CutBasedIdTight_and_PFIsoTight",26)
]

year_map = {
    "2016preVFP": "2016preVFP_UL",
    "2016": "2016postVFP_UL",
    "2017": "2017_UL",
    "2018": "2018_UL"
}

for era,corr_name,pt_cut in configs:

    json_file = f"../tools/muon_Z_{era}.json.gz"
    cset = correctionlib.CorrectionSet.from_file(json_file)

    corr = cset[corr_name]
    year_key = year_map[era]

    eta_bins = np.linspace(0,2.4,25,dtype=float)
    pt_bins = np.linspace(20,200,40,dtype=float)

    h2 = ROOT.TH2D(
        f"h_trigSF_{era}",
        f"Muon Trigger SF {era};Muon p_{{T}} [GeV];|#eta|",
        len(pt_bins)-1, pt_bins,
        len(eta_bins)-1, eta_bins
    )

    for ix in range(1,h2.GetNbinsX()+1):

        pt = h2.GetXaxis().GetBinCenter(ix)

        for iy in range(1,h2.GetNbinsY()+1):

            eta = h2.GetYaxis().GetBinCenter(iy)

            if pt > pt_cut:
                sf = corr.evaluate(year_key, abs(eta), pt, "sf")
            else:
                sf = 1.0

            h2.SetBinContent(ix,iy,sf)

    c = ROOT.TCanvas(f"c_{era}","",1000,800)

    c.SetLeftMargin(0.12)
    c.SetRightMargin(0.15)
    c.SetBottomMargin(0.12)
    c.SetTopMargin(0.08)

    h2.GetZaxis().SetTitle("Trigger SF")
    h2.GetZaxis().SetTitleOffset(1.2)
    h2.GetZaxis().SetRangeUser(0.95,1.05)

    h2.GetXaxis().SetTitleOffset(1.1)
    h2.GetYaxis().SetTitleOffset(1.3)

    h2.Draw("COLZ")

    png_path = f"{outdir}/MuonTrigSF_{era}.png"
    root_path = f"{outdir}/MuonTrigSF_{era}.root"

    c.SaveAs(png_path)

    fout = ROOT.TFile(root_path,"RECREATE")
    h2.Write()
    fout.Close()

    print(f"Saved {png_path}")