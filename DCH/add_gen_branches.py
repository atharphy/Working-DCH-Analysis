import os
import subprocess
import uproot
import awkward as ak
import numpy as np
from concurrent.futures import ProcessPoolExecutor, as_completed

BASE = "/eos/user/a/atahmad/run2_skims"
OUTBASE = BASE + "/updated_MC"

YEARS = ["MC_2016","MC_2017","MC_2018"]

N_WORKERS = 8

GEN_BRANCHES = [
"nGenPart","GenPart_pt","GenPart_eta","GenPart_phi","GenPart_mass",
"GenPart_pdgId","GenPart_status","GenPart_statusFlags","GenPart_genPartIdxMother",
"nGenVisTau","GenVisTau_pt","GenVisTau_eta","GenVisTau_phi","GenVisTau_mass",
"GenVisTau_charge","GenVisTau_status","GenVisTau_genPartIdxMother"
]

MATCH_BRANCHES = ["luminosityBlock","event"]

ID_SCALE = 10**12


def get_das_files(dataset):

    cmd = f'dasgoclient -query="file dataset={dataset}"'
    out = subprocess.check_output(cmd,shell=True).decode().splitlines()

    files = {}

    for f in out:
        base = os.path.basename(f)
        files[base] = "root://xrootd-cms.infn.it/"+f

    return files


def convert_types(arr):

    if isinstance(arr, np.ndarray):

        if arr.dtype == np.uint32:
            return arr.astype(np.int32)

        if arr.dtype == np.uint64:
            return arr.astype(np.int64)

    return arr


def read_skim_tree(tree):

    data = {}

    for b in tree.keys():

        try:
            arr = tree[b].array(library="ak")
            data[b] = arr
        except:
            continue

    return data


def process_file(job):

    skim_file, nano_file, out_file, fname = job

    original = uproot.open(skim_file)

    skim_tree = original["Events"]

    skim_data = read_skim_tree(skim_tree)

    lumi_skim = ak.to_numpy(skim_data["lumi"])
    evt_skim  = ak.to_numpy(skim_data["evt"])

    skimID = lumi_skim.astype(np.int64)*ID_SCALE + evt_skim.astype(np.int64)

    nano_tree = uproot.open(nano_file)["Events"]

    nano_keys = nano_tree.arrays(MATCH_BRANCHES, library="ak")

    lumi_nano = ak.to_numpy(nano_keys["luminosityBlock"])
    evt_nano  = ak.to_numpy(nano_keys["event"])

    nanoID = lumi_nano.astype(np.int64)*ID_SCALE + evt_nano.astype(np.int64)

    order = np.argsort(nanoID)

    nano_sorted = nanoID[order]

    pos = np.searchsorted(nano_sorted, skimID)

    valid = pos < len(nano_sorted)

    pos[~valid] = 0

    matched = nano_sorted[pos] == skimID

    idx = np.full(len(skimID), -1, dtype=np.int64)

    idx[matched] = order[pos[matched]]

    nano_gen = nano_tree.arrays(GEN_BRANCHES, library="ak")

    gen_data = {}

    for b in GEN_BRANCHES:

        arr = nano_gen[b]

        out = []

        for i in idx:

            if i >= 0:
                out.append(arr[i])
            else:
                out.append(arr[0][0:0])

        gen_data[b] = ak.Array(out)

    new_tree = dict(skim_data)

    new_tree.update(gen_data)

    for k in new_tree:

        if isinstance(new_tree[k], np.ndarray):
            new_tree[k] = convert_types(new_tree[k])

    with uproot.recreate(out_file) as fout:

        for key in original.keys():

            name = key.split(";")[0]

            if name == "Events":
                continue

            fout[name] = original[name]

        fout["Events"] = new_tree

    total = len(skimID)

    matched_count = int(np.sum(idx >= 0))

    return fname, total, matched_count


if __name__ == "__main__":

    for year in YEARS:

        print("\nYear:",year)

        indir = f"{BASE}/{year}"
        outdir = f"{OUTBASE}/{year}"

        os.makedirs(outdir,exist_ok=True)

        for sample in sorted(os.listdir(indir)):

            sample_dir = f"{indir}/{sample}"

            if not os.path.isdir(sample_dir):
                continue

            print(" Sample:",sample)

            out_sample = f"{outdir}/{sample}"

            os.makedirs(out_sample,exist_ok=True)

            readme = f"{sample_dir}/README.txt"

            if os.path.exists(readme):
                os.system(f"cp {readme} {out_sample}/")

            with open(readme) as f:
                dataset = f.readline().strip().split(",")[-1]

            das_files = get_das_files(dataset)

            jobs = []

            for fname in sorted(os.listdir(sample_dir)):

                if not fname.endswith(".root"):
                    continue

                if fname not in das_files:
                    continue

                skim_file = f"{sample_dir}/{fname}"

                nano_file = das_files[fname]

                out_file  = f"{out_sample}/{fname}"

                jobs.append((skim_file,nano_file,out_file,fname))

            print(" Files:",len(jobs))

            with ProcessPoolExecutor(max_workers=N_WORKERS) as exe:

                futures = [exe.submit(process_file,j) for j in jobs]

                for f in as_completed(futures):

                    fname,total,matched = f.result()

                    print(f"  {fname} events:{total} matched:{matched}")

    print("\nFinished updating MC samples")