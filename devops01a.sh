#!/bin/bash 

# Bash Script Assigment 00

Echo "         "
Echo "****** Disk Usage *******"
df -h
Echo "         "


Echo "****** CPU Information  *******"
system_profiler SPHardwareDataType | grep 'Proces\|Core' |grep -v L2
Echo "         "


Echo "****** MemoryU Information  *******"
system_profiler SPHardwareDataType | grep "  Memory:"
Echo "         "


