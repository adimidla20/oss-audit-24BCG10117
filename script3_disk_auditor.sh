#!/bin/bash

# ============================================================================
# Script 3: Disk and Permission Auditor
# Purpose: Loop through system directories and report space + permissions
# Author: Adi Midla | Roll: 24BCG10117 | Course: Open Source Software | Software: Git
# ============================================================================

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║         DISK AND PERMISSION AUDITOR — System Audit             ║"
echo "║          Student: Adi Midla (24BCG10117)                       ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/var" "/opt")

echo "Auditing system directories..."
echo ""
echo "────────────────────────────────────────────────────────────────"
printf "%-20s | %-15s | %-10s | %-15s\n" "Directory" "Permissions" "Owner:Group" "Size"
echo "────────────────────────────────────────────────────────────────"

for DIR in "${DIRS[@]}"; do
    
    if [ -d "$DIR" ]; then
        
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        if [ -z "$SIZE" ]; then
            SIZE="[denied]"
        fi
        
        printf "%-20s | %-15s | %-10s | %-15s\n" "$DIR" "$PERMS" "$OWNER:$GROUP" "$SIZE"
    
    else
        echo "$DIR => [NOT FOUND on this system]"
    fi
done

echo "────────────────────────────────────────────────────────────────"
echo ""

echo "═══════════════════════════════════════════════════════════════"
echo "GIT-SPECIFIC CONFIGURATION AUDIT:"
echo "═══════════════════════════════════════════════════════════════"
echo ""

GIT_CONFIG_DIRS=("/etc/gitconfig" "$HOME/.gitconfig" "$HOME/.git")

for GITDIR in "${GIT_CONFIG_DIRS[@]}"; do
    
    if [ -e "$GITDIR" ]; then
        PERMS=$(ls -ld "$GITDIR" 2>/dev/null | awk '{print $1}')
        OWNER=$(ls -ld "$GITDIR" 2>/dev/null | awk '{print $3}')
        SIZE=$(du -sh "$GITDIR" 2>/dev/null | cut -f1)
        
        if [ -z "$SIZE" ]; then
            SIZE="[N/A]"
        fi
        
        echo "✓ $GITDIR"
        echo "  Permissions: $PERMS | Owner: $OWNER | Size: $SIZE"
        echo ""
    else
        echo "✗ $GITDIR [not configured on this system]"
        echo ""
    fi
done

echo "═══════════════════════════════════════════════════════════════"
echo ""
