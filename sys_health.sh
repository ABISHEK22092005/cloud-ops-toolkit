#!/usr/bin/env bash

echo "=== System Health Check ==="
echo "Timestamp: $(date)"
echo ""

echo "[*] Disk Usage:"
df -h / | awk 'NR==2 {print "Root partition used: " $5 " of " $2}'

echo ""
echo "[*] Memory Usage:"
free -m | awk 'NR==2 {printf "RAM used: %sMB / %sMB (%.2f%%)\n", $3, $2, $3*100/$2}'

echo ""
echo "[*] Top 3 Memory Consuming Processes:"
ps aux --sort=-%mem | head -n 4 | awk '{print $1, $2, $3, $4, $11}'
