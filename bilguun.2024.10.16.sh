#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell as admin
wsl --install -d ubuntu
# # Installing: Ubuntu
# Ubuntu has been installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

Enter new UNIX username: "Billy Svenson"
# err: Please enter a username matching the regular expression
#             configured via the NAME_REGEX configuration variable.  Use the
#             `--allow-bad-names' option to relax this check or reconfigure
#             # NAME_REGEX in configuration.
Enter new UNIX username: "bilguun"
New password: "Jj123456"
Retype new password: "Jj123456"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/netudy/.hushlogin file.


# - Open WSL
sudo apt update
[sudo] password for bilguun: "Jj123456"
# [...]
# Fetched 3043 kB in 3s (924 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 33 packages can be upgraded. Run 'apt list --upgradable' to see them.

# - Upgrade pacakges
sudo apt upgrade -y

# - install python
sudo apt install python3-pip -y
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# python3-pip is already the newest version (24.0+dfsg-1ubuntu1).
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# ##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Unpacking pwgen (2.08-2build2) ...
# Setting up pwgen (2.08-2build2) ...
# Processing triggers for man-db (2.12.0-4build2) ...

# - create a password 40 chars, numbers and symbols
pwgen -yn 40
# koh4qua1iephoocu$kie5igh`ah)CooZoo1chooz
# eev2uGhikeiM%oos9bei)vohjeereiS^ei0weij3
# sai5ikeeloo0pex:aiZ6ooXahfiegh3kee6aQui3
# baiWaf3aev<eequ*ie0Aiquaech4eeziP7Iw0oox
# eisu-nei4Aev6LahthaoLeeY7eij~ei1AeN2ang}
# fieFed]ohd1rie7shuxai|ngaCh8ohZe8aeneetu
# dah8Nookohpe2Aos5Quu+zooNahd$o2eeng$eu}T
# ool5bich2iatiX@ai9boh7oabaechei}zee>lae#
# Al0ieNeif`ei0Doo9oonaiph*e3ieTe]y9hoo5oF
# aiy.ee,b3eiph5ooX:eiHeengueph-ooVequeele
# eo3thaing5cai#koh9ait6Ohbohg1edai6Aiche0
# ya0nae3OhChiu{nee2rei=qu)ae{quisaeW0ooLo
# ughaized8Ao"s7aatheojei5eephu~equ1fie7ch
# Aesh2ahj@aethie&X'oh8ohD6Ohshahve7Hohgu6
# Vahp4Aiqu!ahgaiRee6uCahfeil}oo0eeK9mah2a
# uo4eihei/nga3iuy0ce6Aiphu?l4ohph9aeyie9h
# Uu=vie2eimoo6ne1dahBicein4Fie2Tohsohd4qu
# ohR6haebe'r8zaeng2ohghaa4quah=wah0thaew2
# Eph7Fooch&ai{go4vah2reehah2oobee4sieNg8i
# ohj8xo>e0aifohgie0pa0dai0Ethe9fu[e0phaic

# - install openssh server
sudo apt-get install openssh-server

# - check if ssh service is running
sudo service ssh status
# ○ ssh.service - OpenBSD Secure Shell server
#      Loaded: loaded (/usr/lib/systemd/system/ssh.serv>
#      Active: inactive (dead)
# TriggeredBy: ● ssh.socket
#        Docs: man:sshd(8)
#              man:sshd_config(5)

# - Create necessary directories for storing ssh keypairs
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/bilguun
# Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): "ool5bich2iatiX@ai9boh7oabaechei}zee>lae#"
Enter same passphrase again: "ool5bich2iatiX@ai9boh7oabaechei}zee>lae#"
# Your identification has been saved in /home/bilguun/.ssh/bilguun
# Your public key has been saved in /home/bilguun/.ssh/bilguun.pub
# The key fingerprint is:
# SHA256:FYKqQI4Qzlk6w7j3gA0h++PuIapW927CY46QJUBAXkU bilguun@BOJMA2
# The key's randomart image is:
# +---[RSA 4096]----+
# |B+ ooE .. .      |
# |X+=   .  . .     |
# |XX   .    .      |
# |+Bo .    .       |
# |oo*o    S        |
# | o== .           |
# |.o+ + .          |
# |.+...= o         |
# |=.o.o.=.         |
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

# - allow ssh in firewall
sudo ufw allow ssh
# sudo: ufw: command not found

sudo apt install ufw
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done

sudo ufw allow ssh
# Rules updated
# Rules updated (v6)

##########################################################
# upload public keypair to github
##########################################################

# - install git
sudo apt install git
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.43.0-1ubuntu7.1).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 26 not upgraded.

# - fetch pubkey
cat .ssh/bilguun.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCybJx7e2/OUY0wbt6bBwJ7ifmPvYYYaPQTaMEhth52UAthqiDkGVSWwl2HTIAz5INg/m7f1q/p0st1aoe3eBX6eQKbo2F1W8WMa2I2Wr/OlNdEvT2mLc+nB9lI/Q/bdeXaqfd/6xLsYTA08LepjG7VHgrN8BcXptYQFWrNocZpRN7z0KIUsThnE16RLPEQzjQ7ZgSYlD/e4bdjh6rHRRkPSiBQZPE8EeEf1FvL78tUmoCOJ73oBVE9jGqkoaDcSC3mqdXcAisJdJYziCpxUlPaLntSwMj+V91OmMH02A04i+iWMOLAY1dR5nVGP1YZ7IiV8sCWPkFbaV3e2997lt/ZDirBY7nXYbYmYQLARTFfNutSEX2WcmR4eSRnJ1olnBif1BvcKTVjBtmVbTEq/HNbsjPGblpDjHfnUf2RjTxu3oSWsuSjUtDZNRuKJVcRtLySePW11ten8+Wdi9sv7TJ19OBjWNMtXstS8aHpOgTlkXTVyMiR3qVnx6/xko0SlWwfoRf6WuUBEA983N+n4HFDu6JdUUnF7RtTKMBORrsZvhB8wEZkr3cY53SESiVHdOt5N7ATJmipCrxlh9G/ryjirwPLFhUGoBkBxQwA51C3cqAT9Hp8aextJiZV2cA6Jnsf8nnVQ07MtZIOvhojUJ8ASZ3neMk3ABFkigc6Xbm/Kw== bilguun@BOJMA2

# - upload to github through web browser
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"Lenovo Legion, WSL pub key"

# Key type
"[Authentication Key↕]"

# Key
"****************"

"Add SSH key"

# - create ssh config file
cat <<"EOF" > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/bilguun
EOF

# - Verify file
cat ~/.ssh/config
# Host github.com
#   HostName github.com
#   User git
#   IdentityFile ~/.ssh/bilguun

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:netudy/KB-APR24.git
# Cloning into 'KB-APR24'...
# The authenticity of host 'github.com (4.225.11.194)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names.
# Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
# Enter passphrase for key '/home/bilguun/.ssh/bilguun':
# remote: Enumerating objects: 13, done.
# remote: Counting objects: 100% (13/13), done.
# remote: Compressing objects: 100% (9/9), done.
# remote: Total 13 (delta 1), reused 10 (delta 1), pack-reused 0 (from 0)
# Receiving objects: 100% (13/13), done.
# Resolving deltas: 100% (1/1), done.

# - Push changes to remote repository
cd KB-APR24
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

##########################################################
# push to remote
##########################################################

# - create a new branch
git checkout -b "bilguun-second-commit"

# - create a new file
vim ~/src/KB-APR24/bilguun.2024.10.16.sh
i
ctrl-v
esc
:
w
q
