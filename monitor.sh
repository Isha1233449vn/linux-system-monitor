#!/bin/bash

CPU_LIMIT=70
MEM_LIMIT=70

echo "=============================="
echo " SYSTEM MONITORING SYSTEM"
echo "=============================="
echo "TIME: $(date)"
echo ""

# CPU usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo "CPU USAGE: $CPU%"

if (( $(echo "$CPU > $CPU_LIMIT" | bc -l) )); then
    echo "ALERT: HIGH CPU USAGE!"
    echo "$(date) - ALERT: CPU is at $CPU%" >> alert.log
fi

echo ""

# Memory usage
MEM=$(free | grep Mem | awk '{print ($3/$2)*100}')
echo "MEMORY USAGE: $MEM%"

if (( $(echo "$MEM > $MEM_LIMIT" | bc -l) )); then
    echo "ALERT: HIGH MEMORY USAGE!"
    echo "$(date) - ALERT: Memory is at $MEM%" >> alert.log
fi

echo ""
echo "=============================="
