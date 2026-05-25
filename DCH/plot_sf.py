import gzip
import json
import numpy as np
import matplotlib.pyplot as plt
import correctionlib
import warnings

warnings.filterwarnings("ignore")

json_file = "muon_Z_2017.json.gz"
corr_name = "NUM_IsoMu27_DEN_CutBasedIdTight_and_PFIsoTight"

cset = correctionlib.CorrectionSet.from_file(json_file)
corr = cset[corr_name]

with gzip.open(json_file, "rt") as f:
    data = json.load(f)

for c in data["corrections"]:
    if c["name"] == corr_name:
        node = c["data"]
        break

node = node["content"][0]["value"]

eta_edges = np.array(node["edges"], dtype=float)
pt_edges = np.array(node["content"][0]["edges"], dtype=float)

if np.isinf(pt_edges[-1]):
    pt_edges[-1] = pt_edges[-2] * 1.5

eta_centers = 0.5 * (eta_edges[:-1] + eta_edges[1:])
pt_centers = 0.5 * (pt_edges[:-1] + pt_edges[1:])

SF = np.zeros((len(eta_centers), len(pt_centers)))

for i, eta in enumerate(eta_centers):
    for j, pt in enumerate(pt_centers):
        SF[i, j] = corr.evaluate("2017_UL", eta, pt, "sf")

plt.figure(figsize=(8,6))

vmin = 0.95
vmax = 1.05

mesh = plt.pcolormesh(
    pt_edges,
    eta_edges,
    SF,
    shading="flat",
    cmap="RdBu_r",
    vmin=vmin,
    vmax=vmax
)

cbar = plt.colorbar(mesh)
cbar.set_label("Scale Factor")

plt.xlabel("Muon $p_T$ [GeV]")
plt.ylabel(r"$|\eta|$")
plt.title("IsoMu27 Trigger SF (Run2017 UL)")

plt.tight_layout()
plt.savefig("IsoMu27_SF_Run2017_UL.png", dpi=300)