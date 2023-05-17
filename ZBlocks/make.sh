#!/bin/bash

exe_file="ZBlocks"
main_dir="/home/axr/prog/discrete-analysis/ZBlocks"
tmp_dir="${main_dir}/.build"

mkdir ${tmp_dir}
cd ${tmp_dir}

cmake ${main_dir}
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ${main_dir}
make

mv ${exe_file} ${main_dir}
mv compile_commands.json ${main_dir}

