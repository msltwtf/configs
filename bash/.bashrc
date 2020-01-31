if [[ $HOSTNAME -eq "IR-L-155" ]] ; then
export GIT_SSH="C:\Program Files (x86)\PuTTY\plink.exe"

if [[ ! -f /tmp/.ssh-pageant ]]; then
  ssh-pageant > /tmp/.ssh-pageant
elif [[ "$(ls -la /tmp/.ssh-pageant | awk '{print $7}')" < "$(date +%d)" ]] ; then
  rm /tmp/.ssh-pageant
  ssh-pageant > /tmp/.ssh-pageant
fi
source /tmp/.ssh-pageant
fi

if `which sshrc` ; then
  alias ssh="sshrc"
fi
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"
source ~/.sshrc.d/bashenv.sh
#PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ "
