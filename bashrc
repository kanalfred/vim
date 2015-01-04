# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# User specific aliases and functions

# Stop vim ctrl+S abnormal action
stty -ixon

# Tmux Vim Color fix
alias tmux="TERM=screen-256color-bce tmux"
# Centos 7 tmux vim color fix
#alias tmux="TERM=xterm-256color tmux"

#export GREP_OPTIONS="--exclude-dir=\.svn --exclude-dir=\.cache --exclude=\*~"
export GREP_OPTIONS="--color=auto --exclude-dir=\.svn --exclude-dir=\.cache --exclude=tags --exclude=\*~"
#export EDITOR="/usr/bin/vim"

# Alias
alias jq03='ssh akan@devjq03'

alias watch='watch '

# db
alias db='mysql -uadmin -p25538270 -h'
alias wdb='mysql -uadmin -plandmark5! -h'
alias db_getonadmin='mysql -ulistingsadm -pqEiKgZrt -hcpanel.getonadmin.net'

#db query
alias db_radius_acct='wdb radius.watervpn.com -e "select radacctid, username, groupname, nasipaddress, acctstarttime, acctstoptime, calledstationid, callingstationid, framedprotocol, framedipaddress  from radius.radacct order by radacctid desc"'

# shortcut 
alias gp='egrep -Rn'
alias svn-diff="svn diff --diff-cmd='meld'"
