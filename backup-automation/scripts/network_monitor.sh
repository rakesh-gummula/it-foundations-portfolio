#!/bin/bash

# Define target network or IP
TARGET="192.168.1.1" # Change this to your router or a test VM IP
LOGFILE="/tmp/network_monitor.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo "--- Network Scan Start: $TIMESTAMP ---" >> $LOGFILE

# 1. Ping test for host availability
if ping -c 3 $TARGET &> /dev/null; then
    echo "[+] Host $TARGET is UP" >> $LOGFILE
    
    # 2. Basic port check using netcat (nc) for common ports
    echo "    Checking common ports..." >> $LOGFILE
    for PORT in 22 80 443; do
        if nc -z -w 1 $TARGET $PORT 2>/dev/null; then
            echo "    -> Port $PORT is OPEN" >> $LOGFILE
        else
            echo "    -> Port $PORT is CLOSED" >> $LOGFILE
        fi
    done
else
    echo "[-] Host $TARGET is DOWN or blocking ICMP requests" >> $LOGFILE
fi

echo "--- Scan Complete ---" >> $LOGFILE
echo "" >> $LOGFILE
