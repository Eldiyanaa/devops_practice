#!/usr/bin/env bash

echo "==== SYSTEM HEALTH CHECK ===="
echo "User: $(whoami)"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "Disk Usage: "
df -h | grep -E '^/dev/'
echo "Memory Usage:"
free -h
echo "=============================="
