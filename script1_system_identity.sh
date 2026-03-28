#!/bin/bash

# ============================================================================
# Script 1: System Identity Report
# Purpose: Display Linux system information and open-source philosophy message
# Author: [Your Name] | Course: Open Source Software | Software: Git
# ============================================================================

# --- Variables (Fill in your details) ---
STUDENT_NAME="[Your Full Name]"           # Replace with your name
STUDENT_ROLL="[Your Roll Number]"         # Replace with your roll number
SOFTWARE_CHOICE="Git"                      # The software we're auditing
SOFTWARE_LICENSE="GNU General Public License v2 (GPL v2)"

# --- System Information (using command substitution) ---
KERNEL=$(uname -r)                        # Get kernel version
DISTRO=$(cat /etc/os-release | grep "^NAME=" | cut -d'"' -f2)  # Get distro name
USER_NAME=$(whoami)                       # Get current logged-in user
USER_HOME=$(echo $HOME)                   # Get home directory
CURRENT_DATE=$(date '+%d %B %Y')          # Get formatted date
CURRENT_TIME=$(date '+%H:%M:%S')          # Get current time
UPTIME=$(uptime -p)                       # Get system uptime (human-readable)

# --- Display Welcome Banner ---
echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║         OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT             ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# --- Student Information ---
echo "Student Information:"
echo "  Name       : $STUDENT_NAME"
echo "  Roll No.   : $STUDENT_ROLL"
echo "  Software   : $SOFTWARE_CHOICE"
echo ""

# --- Linux System Information ---
echo "Linux System Information:"
echo "  Distribution   : $DISTRO"
echo "  Kernel Version : $KERNEL"
echo "  Current User   : $USER_NAME"
echo "  Home Directory : $USER_HOME"
echo ""

# --- Time and Uptime ---
echo "System Status:"
echo "  Date & Time    : $CURRENT_DATE at $CURRENT_TIME"
echo "  System Uptime  : $UPTIME"
echo ""

# --- Open Source Philosophy Message ---
echo "Open Source Declaration:"
echo "╭────────────────────────────────────────────────────────────────╮"
echo "│ This system runs on a foundation of shared, open-source code.  │"
echo "│                                                                │"
echo "│ $SOFTWARE_CHOICE is licensed under: $SOFTWARE_LICENSE       │"
echo "│                                                                │"
echo "│ This means the source code is free to use, study, modify,     │"
echo "│ and distribute — benefiting developers and users worldwide.   │"
echo "╰────────────────────────────────────────────────────────────────╯"
echo ""

echo "Report generated on: $CURRENT_DATE at $CURRENT_TIME"
echo ""
