#!/usr/bin/env bash
set -euo pipefail

echo "===== Server Health Report ====="
echo "Timestamp: $(date -Is)"
echo "Host: $(hostname)"
echo "Uptime: $(uptime -p)"
echo

echo "[Load Average]"
cat /proc/loadavg
echo

echo "[CPU Info]"
nproc || true
lscpu | grep -E 'Model name|CPU\(s\):' || true
echo

echo "[Memory (MB)]"
free -m
echo

echo "[Disk Usage]"
df -h /
echo

echo "[Top CPU Processes]"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo

echo "Exit code: 0"

