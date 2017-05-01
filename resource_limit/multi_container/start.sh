#!/usr/bin/env bash

for (( c=1; c<=$CPU_CORES; c++ ))
do
   nohup python multi_proc.py &
done

python main.py
