#!/bin/bash

REPORT_FILE="system-report.txt"

{
    echo "========================================"
    echo "        LINUX SYSTEM REPORT"
    echo "========================================"
    echo "Generated on: $(date)"
    echo

    echo "1. HOSTNAME"
    hostname
    echo

    echo "2. KERNEL VERSION"
    uname -r
    echo

    echo "3. DISK USAGE"
    df -h
    echo

    echo "4. MEMORY USAGE"
    free -h
    echo

    echo "5. TOP RUNNING PROCESSES"
    ps aux --sort=-%cpu | head -n 6

    echo
    echo "========================================"
    echo "          END OF REPORT"
    echo "========================================"
} > "$REPORT_FILE"

echo "System report generated successfully!"
echo "Report saved to: $REPORT_FILE"
