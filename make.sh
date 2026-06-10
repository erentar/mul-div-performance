#!/bin/sh
for i in *.c; do
    gcc -O0 "$i" -o "${i%.*}"
done

hyperfine_command="hyperfine -N --warmup 20 -r 100 ";

executables="$(find . -exec file {} \; | grep -i elf | cut -d : -f 1)"
for i in $executables; do
    hyperfine_command+="$i "
done

$hyperfine_command --export-csv out.csv --export-markdown out.md --export-json out.json

