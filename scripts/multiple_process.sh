#!/usr/bin/env bash
file_name="examples/monalisa.jpg"
declare -a shapes_count=("50" "100" "500", "1000", "3000")


for shape in `seq 1 8`; do
    for nshapes in "${shapes_count[@]}"; do
        primitive -i $file_name -o $file_name.$shape.$nshapes.jpg -n $nshapes -nth 10 -r 256 -s 5120 -m $shape
    done
done