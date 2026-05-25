#!/usr/bin/env python3
import os
import sys
import argparse
try:
    import ROOT
except Exception as e:
    print("ERROR: Could not import PyROOT.", file=sys.stderr)
    print(f"Import error: {e}", file=sys.stderr)
    sys.exit(2)

BASE_TXT_ROOT = "/afs/cern.ch/user/a/atahmad/guru_framework/CMSSW_13_0_10/src/DCH-framework/DCH/samples_2018"

def list_root_files(base_dir, recursive=True):
    files = []
    if recursive:
        for root, _, fns in os.walk(base_dir):
            for fn in fns:
                if fn.lower().endswith(".root"):
                    files.append(os.path.join(root, fn))
    else:
        for fn in os.listdir(base_dir):
            if fn.lower().endswith(".root"):
                files.append(os.path.join(base_dir, fn))
    files.sort()
    return files

def check_root_valid_and_events(path):
    f = None
    try:
        ROOT.gErrorIgnoreLevel = ROOT.kError
        f = ROOT.TFile.Open(path, "READ")
        if not f:
            return False, "TFile.Open returned None"
        if f.IsZombie():
            return False, "Zombie file"
        if f.TestBit(ROOT.TFile.kRecovered):
            return False, "File marked as recovered"
        obj = f.Get("Events")
        if not obj:
            return False, "No 'Events' object found"
        if not obj.InheritsFrom("TTree"):
            return False, "'Events' exists but is not a TTree"
        entries = obj.GetEntries()
        if entries < 0:
            return False, "Events tree could not provide entry count"
        return True, f"OK ({entries} entries)"
    except Exception as e:
        return False, f"Exception during check: {e}"
    finally:
        if f:
            f.Close()

def read_txt_list(rel_path):
    full = os.path.join(BASE_TXT_ROOT, rel_path)
    if not os.path.isfile(full):
        raise FileNotFoundError(f"Input list not found: {full}")
    lines = []
    with open(full, "r") as fh:
        for line in fh:
            s = line.strip()
            if not s:
                continue
            if s.startswith("#"):
                continue
            lines.append(s)
    return lines, full

def main():
    parser = argparse.ArgumentParser(description="Validate ROOT files in a directory and compare count to reference list.")
    parser.add_argument("base_directory", help="Base directory containing the ROOT files to check")
    parser.add_argument("txt_relpath", help="Path to the txt list relative to BASE_TXT_ROOT")
    parser.add_argument("--no-recursive", action="store_true", help="Do not scan subdirectories")
    args = parser.parse_args()
    base_dir = args.base_directory
    rel = args.txt_relpath
    if not os.path.isdir(base_dir):
        print(f"ERROR: Base directory does not exist: {base_dir}", file=sys.stderr)
        sys.exit(2)
    try:
        listed_paths, list_fullpath = read_txt_list(rel)
    except Exception as e:
        print(f"ERROR: {e}", file=sys.stderr)
        sys.exit(2)
    root_files = list_root_files(base_dir, recursive=(not args.no_recursive))
    print("=== Configuration ===")
    print(f"Data directory:       {base_dir}")
    print(f"Recursive scan:       {not args.no_recursive}")
    print(f"List file (resolved): {list_fullpath}")
    print()
    print("=== Count check ===")
    print(f"Files listed in txt:  {len(listed_paths)}")
    print(f".root files found:    {len(root_files)}")
    count_ok = (len(listed_paths) == len(root_files))
    if count_ok:
        print("✅ Count matches.")
    else:
        print("❌ Count mismatch.")
    print()
    print("=== Per-file validation (Events TTree) ===")
    bad = []
    for i, path in enumerate(root_files, 1):
        ok, reason = check_root_valid_and_events(path)
        status = "OK" if ok else "BAD"
        print(f"[{i:4d}/{len(root_files):4d}] {status} - {path} - {reason}")
        if not ok:
            bad.append((path, reason))
    print()
    print("=== Summary ===")
    if bad:
        print(f"❌ Invalid ROOT files: {len(bad)}")
        for p, r in bad:
            print(f"   - {p}  -->  {r}")
    else:
        print("✅ All scanned ROOT files look valid and have an accessible 'Events' tree.")
    exit_code = 0
    if not count_ok or bad:
        exit_code = 1
    sys.exit(exit_code)

if __name__ == "__main__":
    main()
