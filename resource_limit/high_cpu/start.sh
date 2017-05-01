#!/usr/bin/env bash

for (( c=1; c<=$CPU_CORES; c++ ))
do
   nohup python cpu.py &
done

python main.py
