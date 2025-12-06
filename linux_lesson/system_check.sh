#1/bin/bash

echo "===== System Check Report ===="
echo "Date: $(date)"
echo "Uptime: $(uptime)"
echo "User: (whoami)"
echo "Disk Usage:"
df -h
echo "Memory Usage:"
free -h
echo "Top 5 processes:"
ps aux --sort=%cpu | head -n 6

