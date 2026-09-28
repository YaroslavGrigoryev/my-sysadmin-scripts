#!/bin/bash

INTERVAL=5
LOG_FILE="monitor.log"

touch "$LOG_FILE" || exit 1

log_snapshot() {
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
        free -h
        df -h
        uptime
        echo
    } >> "$LOG_FILE"
}

while true
do
    log_snapshot
    sleep "$INTERVAL"
done
