#!/usr/bin/env bash
set -ex

chmod +x ./RDcomp.exe
for file in ./data/*.pdb ; do
    name=$(basename "${file}" .pdb)
    output_csv="./results/${name}_result.csv"
    ./RDcomp.exe "${file}" "${output_csv}" "./results/${name}_RDvalue.txt"
    # Create comma-delimited CSV
    (tr "," ";" | tr "." ",") < "${output_csv}" > "${output_csv%.csv}_pl.csv"
done
