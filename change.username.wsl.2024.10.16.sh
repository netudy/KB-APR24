#!/bin/bash
# change.username.wsl.2024.10.16.sh
# This script automates changing the username in WSL

# Check if the script is run as root (since username changes may require sudo)
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or use sudo."
  exit 1
fi

echo "Changing WSL username..."
# Add your script logic here (e.g., modifying /etc/wsl.conf or other relevant files)

