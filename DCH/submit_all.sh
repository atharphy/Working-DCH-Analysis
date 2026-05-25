#!/bin/bash

MC_TYPES=("DY" "DYInc" "WJ" "WJInc" "TT" "TTW" "TTZ" "WZ" "QCD" "ZZ" "WW" "ttH")

for mc_type in "${MC_TYPES[@]}"; do
    python3 gen_skim.py -s True -mc True -type "$mc_type"
done

python3 gen_skim.py -s True -mc False
