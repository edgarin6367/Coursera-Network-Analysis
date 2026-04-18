#!/usr/bin/bash

BROWSER='/usr/bin/firefox'
KEY_LOG='/home/hacktuan/Desktop/Courses/Coursera/TCPDump/checkspy/SSLKeys'
INTERFACE='lo'

export SSLKEYLOGFILE="$KEY_LOG"

function ctrl_c(){
  echo -e "\n\n[!] Exit"
  echo "[*] Stopping processes and saving captures..."
  pkill $(basename "$BROWSER")
  sudo pkill tcpdump

  echo "[+] Program execution stopped correctly."
}

trap ctrl_c SIGINT

echo "[*] Closing browser instances ..."
pkill $(basename "$BROWSER")
sleep 2

echo "[*] Starting Browser: $BROWSER"
$BROWSER --new-instance &

echo "[*] Capturing traffic data on port 22..."
sudo tcpdump host apod.nasa.gov and ip -w capture.pcap -G 600 -C 1
