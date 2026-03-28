#!/bin/bash

# ============================================================================
# Script 5: Open Source Manifesto Generator
# Purpose: Interactive script that generates personalized OSS philosophy
# Author: Adi Midla | Roll: 24BCG10117 | Course: Open Source Software | Software: Git
# ============================================================================

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║       OPEN SOURCE MANIFESTO GENERATOR — Your Philosophy        ║"
echo "║          Student: Adi Midla (24BCG10117)                       ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "Answer three questions to generate your personal open-source"
echo "philosophy statement. Your answers will be saved to a file."
echo ""
echo "────────────────────────────────────────────────────────────────"
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

echo ""
echo "────────────────────────────────────────────────────────────────"
echo ""

DATE=$(date '+%d %B %Y')
TIME=$(date '+%H:%M:%S')
USERNAME=$(whoami)
HOSTNAME=$(hostname)

OUTPUT_DIR="manifestos"
if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir -p "$OUTPUT_DIR"
fi

OUTPUT_FILE="$OUTPUT_DIR/manifesto_${USERNAME}_$(date '+%Y%m%d_%H%M%S').txt"

echo "Generating your manifesto..."
echo ""

MANIFESTO="═══════════════════════════════════════════════════════════════════════════════
                      OPEN SOURCE PHILOSOPHY MANIFESTO
═══════════════════════════════════════════════════════════════════════════════

Author: Adi Midla
Roll Number: 24BCG10117
Generated on: $DATE at $TIME
System: $HOSTNAME

───────────────────────────────────────────────────────────────────────────────

I believe in open source.

Every day, I use $TOOL — software built openly, maintained collectively, and
shared freely with the world. This tool represents the best of what happens
when developers choose collaboration over competition, transparency over secrecy,
and community over profit.

To me, freedom means $FREEDOM — the ability to make choices, to understand
the tools I depend on, and to shape the world around me according to my values.
Open source embodies this freedom. It trusts users. It respects knowledge.

One day, I will build and share $BUILD freely with others. Not because
I expect payment or fame, but because sharing amplifies impact. Because knowledge
should flow, not be locked away. Because the next generation of developers —
stand on the shoulders of giants who chose openness.

This is why open source matters. It is not just a license model or a business
strategy. It is a philosophy that knowledge, tools, and creativity thrive when
shared. It is the foundation of modern software. It is the future I want to build.

I commit to:
  ✓ Using open-source tools with integrity and respect
  ✓ Contributing back when I can
  ✓ Advocating for transparency and freedom in software
  ✓ Sharing my work openly when the opportunity arises
  ✓ Standing with the community of developers who believe in openness

═══════════════════════════════════════════════════════════════════════════════
                              END OF MANIFESTO
═══════════════════════════════════════════════════════════════════════════════
"

echo "$MANIFESTO" > "$OUTPUT_FILE"

echo "Your Manifesto:"
echo ""
echo "$MANIFESTO"
echo ""

echo "────────────────────────────────────────────────────────────────"
echo ""
echo "✓ Manifesto saved to: $OUTPUT_FILE"
echo ""

echo "────────────────────────────────────────────────────────────────"
echo ""
echo "Your philosophy statement is saved and ready to inspire your journey"
echo "into open-source development. Keep building. Keep sharing."
echo ""
echo "═══════════════════════════════════════════════════════════════════════════════"
echo ""
