#!/bin/bash

# DeepResearch Integrator Skill Installer
# This script installs the deepresearch-integrator skill for Claude Code

set -e

echo "=========================================="
echo "DeepResearch Integrator Skill Installer"
echo "=========================================="
echo ""

# Determine installation target
if [ "$1" == "--global" ] || [ "$1" == "-g" ]; then
    INSTALL_DIR="$HOME/.claude/skills"
    SCOPE="global"
    echo "Installing globally to: $INSTALL_DIR"
elif [ -n "$1" ]; then
    INSTALL_DIR="$1/.claude/skills"
    SCOPE="project-specific"
    echo "Installing to project: $INSTALL_DIR"
else
    INSTALL_DIR=".claude/skills"
    SCOPE="current directory"
    echo "Installing to current directory: $INSTALL_DIR"
fi

echo ""

# Create skills directory if it doesn't exist
if [ ! -d "$INSTALL_DIR" ]; then
    echo "Creating skills directory..."
    mkdir -p "$INSTALL_DIR"
fi

# Check if skill already exists
if [ -f "$INSTALL_DIR/deepresearch-integrator.md" ]; then
    echo "⚠️  Warning: deepresearch-integrator skill already exists in $INSTALL_DIR"
    read -p "Do you want to overwrite it? (y/N): " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Installation cancelled."
        exit 0
    fi
fi

# Copy the skill file
echo "Copying skill file..."
cp .claude/skills/deepresearch-integrator.md "$INSTALL_DIR/"

echo ""
echo "✅ Installation complete!"
echo ""
echo "The deepresearch-integrator skill has been installed ($SCOPE)."
echo ""
echo "Usage in Claude Code:"
echo "  1. Type: /skill deepresearch-integrator"
echo "  2. Provide your consolidation task"
echo "  3. Follow the guided workflow"
echo ""
echo "Example:"
echo "  Consolidate all deepresearch results in research/ into final-report.md"
echo ""
echo "For more information, see README.md"
echo "=========================================="
