PS C:\Users\vivia> wsl.exe
viviana-ballesteros@VivianaB-2105:/mnt/c/Users/vivia$ cd
viviana-ballesteros@VivianaB-2105:~$ cd src/KB-APR24/
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git push --set-upstream origin vivi-first-commit
Username for 'https://github.com': ^C
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ ls -la
total 28
drwxr-xr-x 3 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:30 .
drwxr-xr-x 3 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:28 ..
drwxr-xr-x 8 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:36 .git
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros   10 Oct 18 10:28 README.md
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros   16 Oct 18 10:28 example.file
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros    7 Oct 18 10:28 skolan.txt
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros   62 Oct 18 10:30 vivi.2024.10.18.sh
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ sudo ufw status
[sudo] password for viviana-ballesteros: 
sudo: ufw: command not found
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ cd
viviana-ballesteros@VivianaB-2105:~$ cd .ssh/
viviana-ballesteros@VivianaB-2105:~/.ssh$ ls -la
total 20
drwx------ 2 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:13 .
drwxr-x--- 8 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:33 ..
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros   76 Oct 18 10:13 config
-rw------- 1 viviana-ballesteros viviana-ballesteros 3454 Oct 18 10:12 vivi
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros  759 Oct 18 10:12 vivi.pub
viviana-ballesteros@VivianaB-2105:~/.ssh$ cd ..
viviana-ballesteros@VivianaB-2105:~$ ls -la
total 56
drwxr-x--- 8 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:33 .
drwxr-xr-x 3 root                root                4096 Oct 16 11:06 ..
drwxr-xr-x 2 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:11 ..ssh
-rw------- 1 viviana-ballesteros viviana-ballesteros  709 Oct 18 10:37 .bash_history
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros  220 Oct 16 11:06 .bash_logout
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros 3771 Oct 16 11:06 .bashrc
drwx------ 2 viviana-ballesteros viviana-ballesteros 4096 Oct 16 11:07 .cache
drwx------ 3 viviana-ballesteros viviana-ballesteros 4096 Oct 16 11:54 .config
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros   43 Oct 18 10:33 .gitconfig
drwxr-xr-x 2 viviana-ballesteros viviana-ballesteros 4096 Oct 17 11:15 .landscape
-rw------- 1 viviana-ballesteros viviana-ballesteros   20 Oct 18 10:31 .lesshst
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros    0 Oct 18 08:52 .motd_shown
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros  807 Oct 16 11:06 .profile
drwx------ 2 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:13 .ssh
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros    0 Oct 16 11:13 .sudo_as_admin_successful
drwxr-xr-x 3 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:28 src
viviana-ballesteros@VivianaB-2105:~$ cd .ssh/
viviana-ballesteros@VivianaB-2105:~/.ssh$ ls -la
total 20
drwx------ 2 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:13 .
drwxr-x--- 8 viviana-ballesteros viviana-ballesteros 4096 Oct 18 10:33 ..
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros   76 Oct 18 10:13 config
-rw------- 1 viviana-ballesteros viviana-ballesteros 3454 Oct 18 10:12 vivi
-rw-r--r-- 1 viviana-ballesteros viviana-ballesteros  759 Oct 18 10:12 vivi.pub
viviana-ballesteros@VivianaB-2105:~/.ssh$ cat config 
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/vivi
viviana-ballesteros@VivianaB-2105:~/.ssh$ systemctl ssh status
Unknown command verb 'ssh', did you mean 'stop'?
viviana-ballesteros@VivianaB-2105:~/.ssh$ systemctl status ssh
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/usr/lib/systemd/system/ssh.service; disabled; preset: enabled)
     Active: active (running) since Fri 2024-10-18 09:20:06 CEST; 1h 18min ago
TriggeredBy: ● ssh.socket
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 800 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 802 (sshd)
      Tasks: 1 (limit: 9336)
     Memory: 2.5M ()
     CGroup: /system.slice/ssh.service
             └─802 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"

Oct 18 09:20:06 VivianaB-2105 systemd[1]: Starting ssh.service - OpenBSD Secure Shell server...
    . /etc/bash_completion
    . /etc/bash_completion
Oct 18 09:20:06 VivianaB-2105 sshd[802]: Server listening on :: port 22.
Host github.com
Oct 18 09:20:06 VivianaB-2105 systemd[1]: Started ssh.service - OpenBSD Secure Shell server.
viviana-ballesteros@VivianaB-2105:~/.ssh$ ping github.com
PING github.com (4.225.11.194) 56(84) bytes of data.
64 bytes from 4.225.11.194: icmp_seq=1 ttl=106 time=8.86 ms
^C
--- github.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 8.855/8.855/8.855/0.000 ms
viviana-ballesteros@VivianaB-2105:~/.ssh$ cd
viviana-ballesteros@VivianaB-2105:~$ cd src/
viviana-ballesteros@VivianaB-2105:~/src$ cd KB-APR24/
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ ssh -T git@github.com
The authenticity of host 'github.com (4.225.11.194)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/viviana-ballesteros/.ssh/vivi':
Hi Vivianab1121! You've successfully authenticated, but GitHub does not provide shell access.
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ ^C
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ test -f ~/.profile && . ~/.profile
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ test -f ~/.bashrc && . ~/.bashrc
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ vim ~/.bashrc
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ source ~/.bashrc
Initializing new SSH agent...
succeeded
/home/viviana-ballesteros/.ssh/id_rsa: No such file or directory
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ vim ~/.bashrc
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ source ~/.bashrc
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git push --set-upstream origin vivi-first-commit
Username for 'https://github.com': ^C
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ vim ~/.ssh/config
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ source ~/.ssh/config 
Command 'Host' not found, did you mean:
  command 'gost' from snap gost (2.12.0)
  command 'ost' from deb openstructure (2.5.0-1build1)
  command 'most' from deb most (5.2.0-1)
  command 'host' from deb bind9-host (1:9.18.28-0ubuntu0.24.04.1)
  command 'gost' from deb gost (0.1.2-2ubuntu0.24.04.1)
See 'snap info <snapname>' for additional versions.
HostName: command not found
User: command not found
IdentityFile: command not found
AddKeysToAgent: command not found
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git push --set-upstream origin vivi-first-commit
Username for 'https://github.com': 
Password for 'https://github.com':
remote: No anonymous write access.
fatal: Authentication failed for 'https://github.com/netudy/KB-APR24.git/'
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ cd ..
viviana-ballesteros@VivianaB-2105:~/src$ rm -rf KB-APR24/
viviana-ballesteros@VivianaB-2105:~/src$ sudo ufw allow ssh
sudo: ufw: command not found
viviana-ballesteros@VivianaB-2105:~/src$ sudo apt update
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Get:2 http://archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Hit:3 http://security.ubuntu.com/ubuntu noble-security InRelease
Hit:4 http://archive.ubuntu.com/ubuntu noble-backports InRelease
Get:5 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [597 kB]
Get:6 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [705 kB]
Fetched 1428 kB in 1s (2122 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
18 packages can be upgraded. Run 'apt list --upgradable' to see them.
Unpacking mesa-vulkan-drivers:amd64 (24.0.9-0ubuntu0.2) over (24.0.9-0ubuntu0.1) ...
Preparing to unpack .../14-snapd_2.65.3+24.04_amd64.deb ...
Unpacking snapd (2.65.3+24.04) over (2.63.1+24.04) ...
Preparing to unpack .../15-cloud-init_24.3.1-0ubuntu0~24.04.2_all.deb ...
Unpacking cloud-init (24.3.1-0ubuntu0~24.04.2) over (24.3.1-0ubuntu0~24.04.1) ...
Setting up snapd (2.65.3+24.04) ...
Installing new version of config file /etc/apparmor.d/usr.lib.snapd.snap-confine.real ...
snapd.failure.service is a disabled or a static unit not running, not starting it.
snapd.snap-repair.service is a disabled or a static unit not running, not starting it.
Setting up mesa-vulkan-drivers:amd64 (24.0.9-0ubuntu0.2) ...
Setting up gtk-update-icon-cache (3.24.41-4ubuntu1.2) ...
Setting up libgbm1:amd64 (24.0.9-0ubuntu0.2) ...
Setting up libproc2-0:amd64 (2:4.0.4-4ubuntu3.2) ...
Setting up libglapi-mesa:amd64 (24.0.9-0ubuntu0.2) ...
Setting up python3-update-manager (1:24.04.9) ...
Setting up procps (2:4.0.4-4ubuntu3.2) ...
Setting up libgtk-3-common (3.24.41-4ubuntu1.2) ...
Setting up cloud-init (24.3.1-0ubuntu0~24.04.2) ...
Setting up libgl1-mesa-dri:amd64 (24.0.9-0ubuntu0.2) ...
Setting up libegl-mesa0:amd64 (24.0.9-0ubuntu0.2) ...
Setting up update-manager-core (1:24.04.9) ...
Setting up libglx-mesa0:amd64 (24.0.9-0ubuntu0.2) ...
Processing triggers for libc-bin (2.39-0ubuntu8.3) ...
Processing triggers for rsyslog (8.2312.0-3ubuntu9) ...
Processing triggers for man-db (2.12.0-4build2) ...
Processing triggers for libglib2.0-0t64:amd64 (2.80.0-6ubuntu3.1) ...
Processing triggers for dbus (1.14.10-4ubuntu4.1) ...
Setting up libgtk-3-0t64:amd64 (3.24.41-4ubuntu1.2) ...
Setting up libgtk-3-bin (3.24.41-4ubuntu1.2) ...
Processing triggers for libc-bin (2.39-0ubuntu8.3) ...
Selecting previously unselected package ufw.
Preparing to unpack .../8-ufw_0.36.2-6_all.deb ...
Unpacking ufw (0.36.2-6) ...
Setting up libip4tc2:amd64 (1.8.10-3ubuntu2) ...
Setting up libip6tc2:amd64 (1.8.10-3ubuntu2) ...
Setting up libnftnl11:amd64 (1.2.6-2build1) ...
Setting up libnfnetlink0:amd64 (1.0.2-2build1) ...
Setting up libnftables1:amd64 (1.0.9-1build1) ...
Setting up nftables (1.0.9-1build1) ...
Setting up libnetfilter-conntrack3:amd64 (1.0.9-6build1) ...
Setting up iptables (1.8.10-3ubuntu2) ...
update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
Setting up ufw (0.36.2-6) ...

Creating config file /etc/ufw/before.rules with new version

Creating config file /etc/ufw/before6.rules with new version

Creating config file /etc/ufw/after.rules with new version

Creating config file /etc/ufw/after6.rules with new version
Created symlink /etc/systemd/system/multi-user.target.wants/ufw.service → /usr/lib/systemd/system/ufw.service.
Processing triggers for libc-bin (2.39-0ubuntu8.3) ...
Processing triggers for rsyslog (8.2312.0-3ubuntu9) ...
Processing triggers for man-db (2.12.0-4build2) ...
viviana-ballesteros@VivianaB-2105:~/src$ sudo ufw status
Status: inactive
viviana-ballesteros@VivianaB-2105:~/src$ sudo ufw allow ssh
Rules updated
Rules updated (v6)
viviana-ballesteros@VivianaB-2105:~/src$ sudo ufw enable
Firewall is active and enabled on system startup
viviana-ballesteros@VivianaB-2105:~/src$ git clone git@github.com:netudy/KB-APR24.git 
Cloning into 'KB-APR24'...
Enter passphrase for key '/home/viviana-ballesteros/.ssh/vivi': 
remote: Enumerating objects: 35, done.
remote: Counting objects: 100% (35/35), done.
remote: Compressing objects: 100% (28/28), done.
remote: Total 35 (delta 5), reused 29 (delta 2), pack-reused 0 (from 0)
Receiving objects: 100% (35/35), 8.13 KiB | 1.35 MiB/s, done.
Resolving deltas: 100% (5/5), done.
viviana-ballesteros@VivianaB-2105:~/src$ cd KB-APR24/
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git checkout -b "vivi-first-commit"

cat <<"EOF" > ~/src/KB-APR24/vivi.2024.10.18.sh
#!/bin/sh
echo Vivi first commit :)
exit 1

# my first commit
EOF
Switched to a new branch 'vivi-first-commit'
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git add vivi.2024.10.18.sh
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git config --global user.name vivi
^C
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ ^C
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git commit -am "my first commit"
[vivi-first-commit 8f6ffed] my first commit
 1 file changed, 5 insertions(+)
 create mode 100644 vivi.2024.10.18.sh
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$ git push --set-upstream origin vivi-first-commit
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 14 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 315 bytes | 315.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: 
remote: Create a pull request for 'vivi-first-commit' on GitHub by visiting:
remote:      https://github.com/netudy/KB-APR24/pull/new/vivi-first-commit
remote:
To github.com:netudy/KB-APR24.git
 * [new branch]      vivi-first-commit -> vivi-first-commit
branch 'vivi-first-commit' set up to track 'origin/vivi-first-commit'.
viviana-ballesteros@VivianaB-2105:~/src/KB-APR24$
