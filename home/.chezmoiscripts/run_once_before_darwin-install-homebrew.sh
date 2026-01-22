#!/bin/sh
set -e

# Check for Xcode CLT
if ! xcode-select -p >/dev/null 2>&1; then
  echo "Please install Xcode Command Line Tools (xcode-select --install) and re-run the bootstrap command."
  exit 1
fi

# Install Homebrew if missing
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ensure Homebrew is added to PATH before installing packages
eval "$(brew shellenv)"
