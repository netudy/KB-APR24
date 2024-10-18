#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

# - open cmd
ubuntu config --default-user root

# - open wsl
usermod -l alex -d /home/alex -m netudy
passwd alex
New password: "0000"
Retype new password: "0000"

# - open cmd
ubuntu config --default-user alex
