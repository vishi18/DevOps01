#!/bin/bash 

# Bash Script Assigment 00 Paer 3

volume() 
 {
   Echo "         "
   Echo "****** Disk Usage *******"
   df -h
   Echo "         "
 }  

print-all() 
 {
  Echo "****** CPU Information  *******"
system_profiler SPHardwareDataType | grep 'Proces\|Core' |grep -v L2
Echo "         "


Echo "****** Memory Information  *******"
system_profiler SPHardwareDataType | grep "  Memory:"
Echo "         "

Echo "****** Network IP/MAC  Information  *******"
ifconfig
Echo "         "
}

 case $1 in

-volumes)
    echo "Volmnes"
    volume 
     ;;
 *)
     print-all
     ;;
 esac
