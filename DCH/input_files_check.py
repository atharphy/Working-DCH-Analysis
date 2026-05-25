import os
import ROOT

failed_jobs_dir = "jobs_failed"

def is_root_file_valid(file_path):
    try:
        root_file = ROOT.TFile.Open(file_path, "READ")
        if not root_file or root_file.IsZombie() or root_file.TestBit(ROOT.TFile.kRecovered):
            return False
        if not root_file.GetListOfKeys() or not root_file.Get("Events"):
            return False
        root_file.Close()
        return True
    except Exception:
        return False

def check_failed_jobs():
    for root, _, files in os.walk(failed_jobs_dir):
        for fname in files:
            if fname == "condorjob_failed.sh":
                script_path = os.path.join(root, fname)
                with open(script_path, "r") as f:
                    lines = f.readlines()

                remote_files = []
                for line in lines:
                    if "-f root://" in line:
                        parts = line.split("-f")
                        if len(parts) > 1:
                            remote_file = parts[1].split()[0]
                            remote_files.append(remote_file)

                if remote_files:
                    print(f"\nChecking {len(remote_files)} files from {script_path}")
                    for rf in remote_files:
                        status = "GOOD" if is_root_file_valid(rf) else "BAD"
                        print(f"   {rf}  -->  {status}")

if __name__ == "__main__":
    check_failed_jobs()
