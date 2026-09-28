#!/bin/bash

INTERVAL=${1:-5}

while true
do
    echo "=== $(date) ==="
    free -h
    df -h
    uptime
    sleep "$INTERVAL"
done
