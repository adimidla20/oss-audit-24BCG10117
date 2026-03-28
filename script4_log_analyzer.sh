#!/bin/bash

# ============================================================================
# Script 4: Log File Analyzer
# Purpose: Read log file line by line, count keyword occurrences
# Usage: ./script4_log_analyzer.sh [logfile] [keyword]
# Example: ./script4_log_analyzer.sh /var/log/syslog error
# Author: [Your Name] | Course: Open Source Software | Software: Git
# ============================================================================

LOGFILE="${1:-/var/log/syslog}"
KEYWORD="${2:-error}"
COUNT=0
MATCHING_LINES=()

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║              LOG FILE ANALYZER — Keyword Counter               ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "Log file: $LOGFILE"
echo "Keyword:  $KEYWORD"
echo ""

if [ ! -f "$LOGFILE" ]; then
    echo "❌ Error: File '$LOGFILE' not found."
    echo ""
    echo "Usage: $0 [logfile] [keyword]"
    echo "Example: $0 /var/log/syslog error"
    echo ""
    exit 1
fi

echo "Analyzing '$LOGFILE'..."
echo ""

while IFS= read -r LINE; do
    
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        MATCHING_LINES+=("$LINE")
    fi
    
done < "$LOGFILE"

echo "────────────────────────────────────────────────────────────────"
echo "RESULTS:"
echo "────────────────────────────────────────────────────────────────"
echo ""
echo "Keyword '$KEYWORD' found: $COUNT times"
echo ""

if [ $COUNT -eq 0 ]; then
    echo "No matching entries found. The log appears clean."
    echo ""
elif [ $COUNT -eq 1 ]; then
    echo "Found 1 matching entry:"
    echo ""
    echo "${MATCHING_LINES[0]}"
    echo ""
else
    echo "Found $COUNT matching entries."
    echo ""
    echo "Last 5 matching lines:"
    echo "───────────────────────────────────────────────────────────────"
    
    START=$((COUNT - 5))
    if [ $START -lt 0 ]; then
        START=0
    fi
    
    for (( i = $START; i < COUNT; i++ )); do
        echo "[Entry $((i+1))]"
        echo "${MATCHING_LINES[$i]}"
        echo ""
    done
fi

echo "────────────────────────────────────────────────────────────────"
echo "SUMMARY:"
echo "────────────────────────────────────────────────────────────────"
echo ""

TOTAL_LINES=$(wc -l < "$LOGFILE")
PERCENTAGE=$((COUNT * 100 / TOTAL_LINES))

echo "Total lines in log file: $TOTAL_LINES"
echo "Matching lines:          $COUNT"
echo "Percentage:              $PERCENTAGE%"
echo ""

if [ $PERCENTAGE -gt 10 ]; then
    echo "⚠️  WARNING: High occurrence of '$KEYWORD' detected!"
elif [ $PERCENTAGE -eq 0 ]; then
    echo "✓ GOOD: No '$KEYWORD' entries found. System appears healthy."
else
    echo "ℹ️  INFO: Occasional '$KEYWORD' entries. Monitor for patterns."
fi

echo ""
echo "────────────────────────────────────────────────────────────────"
echo ""
