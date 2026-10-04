#!/bin/bash
echo "=========================================="
echo "        SERVER SECURITY & HEALTH CHECK    "
echo "=========================================="
echo "[+] Hostname: $(hostname)"
echo "[+] Date & Time: $(date)"
echo "[+] Uptime: $(uptime -p)"
echo ""
echo "[+] Root Disk Usage:"
df -h / | awk 'NR==2 {print "Used: "$3" / "$2" ("$5")"}'
echo ""
echo "[+] Memory Usage:"
free -m | awk 'NR==2{printf "Used: %sMB / %sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
echo ""
echo "[+] Firewall Status:"
sudo ufw status | grep "Status:"
echo ""
echo "[+] Top 3 CPU Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 4
echo "=========================================="
