#!/usr/bin/bash

KEY_LOG='/home/hacktuan/Desktop/Courses/Coursera/TCPDump/checkspy/SSLKeys'
INTERFACE='lo'


function ctrl_c(){
  echo -e "\n\n[!] Exit"
  sudo pkill tcpdump

  echo "[+] Program execution stopped correctly."
}

trap ctrl_c SIGINT
echo "[*] Capturing traffic data on port 22..."
sudo tcpdump port 22 -i $INTERFACE -w proof.pcap -C 2 -G 600
