# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi
cd /data/data/com.termux/files/usr/etc
rm -rf motd
rm -rf bash.bashrc
wget https://raw.githubusercontent.com/D071N/ubantu/main/bash.bashrc
clear
cd
neofetch --ascii_distro kalilinux
PS1="\033[01;34m\]┌──\[\033[01;32m\]root\[\033[01;34m\]@\[\033[01;31m\]\h\[\033[00;34m\]\[\033[01;34m\]\w\[\033[00;34>
\[\033[01;34m\]└╼\[\033[01;31m\]►\[\033[01;32m\]"

cd /storage/8096-5DDC
