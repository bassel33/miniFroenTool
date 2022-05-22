#!/bin/bash


#waiting the user to choose a choice 

echo ""
echo "please enter a valid choice number :"
echo "1. Make a packet capture from network device"
echo "2. Read a network trace file (.pcap)"
echo "3. Find the inode number of a file"
echo "4. Find file of an inode number"
    
while true ; do

#read choice
read Case

case $Case in
  1)
    echo "choose the needed packet from below:"

    sudo tcpdump -D 
    echo "what is the desired device and please press ctrl+c to pause capturing"

    read i

    #command which starts capturing packets from tgw desird device

    sudo tcpdump --interface $i

    
  ;;
  2)
    echo "please enter the file path"

    read File

    #command which reds .pcap file and list packet info
    tcpdump -r $File

  ;;  
  3)
    echo "enter the file name to get it's inode"

    read File

    #this commands get the inode number of a file 
    ls -i $file
    
  ;;  
  4)
    echo "enter inode number to get it's file"
    read iNode 

    #find the folder using it's inode
    find -inum $iNode
    
        
  ;;
  *)
    echo "\nthis is not a valid option"
    continue
esac
break
done
    

