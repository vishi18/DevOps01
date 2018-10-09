#!/bin/bash 

# Bash Script Assigment 00 Paer 3

volume() 
 {
   Echo "         "
   Echo "****** Disk Usage *******"
   df -h
   Echo "         "
 }  

cpu()
 {
  Echo "****** CPU Information  *******"
system_profiler SPHardwareDataType | grep 'Proces\|Core' |grep -v L2
Echo "         "
 }

ram()
 {
Echo "****** Memory Information  *******"
system_profiler SPHardwareDataType | grep "  Memory:"
Echo "         "
 }

network()
 {
Echo "****** Network IP/MAC  Information  *******"
ifconfig
Echo "         "
 }
 
all()
  {
   volume
   cpu
   ram
   network
  }
 
usage()
 {
  
   echo " usage of this command"
   echo " -volumes"
   echo " -cpu"
   echo " -ram"
   echo " -network"
   echo " -all"
   }
# Main Script

case $1 in

-volumes)
  echo "VOOOOOOO"
    volume 
     ;;
-cpu)
    cpu 
     ;;

-ram)
    ram 
     ;;

-network)
    network 
     ;;
-all)
    all 
     ;;

*)
   usage
    ;;
 esac
