function getWeather {
  if [[ $1 ]] ; then
    curl -s http://de.wttr.in/Siegen?$0;
  else
	curl -s http://de.wttr.in/Siegen?0;
  fi
}
alias wttr="getWeather"
alias wetter="getWeather"
alias v="vim"
alias ls="ls --color"
alias l="ls -la"
alias vv="vim Vagrantfile"
alias V="vagrant"
alias gs='git status'
alias g='git'
alias infra="cd ~/git/infrastruktur"
alias mariusl="cd ~/git/infrastruktur/users/mariusl"
alias poweroff="bash ~/poweroff.sh"
alias ..="cd .."
alias ir="cd ~/git/ir"
alias wip="cd ~/git/infrastruktur/tools/ir_checkout/installer/"
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"
if [[ -e /usr/bin/exa ]] ; then
  alias ls=exa
fi
export PROMPT_DIRTRIM=2

if [[ $USERNAME == "root" ]] || [[ $USER == "root" ]]; then
  export PS1="\$? \A \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;160m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\H:\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"
elif [[ $HOSTNAME == "ir-l-155" ]] && [[ $USERNAME == "mariusl" ]]; then
  export PS1="\$? \A \[\033[38;5;10m\]\[\033[38;5;15m\]\[\033[38;5;6m\][\w]  $(__git_ps1 )\[\033[38;5;15m\]\n\\$ "
  #export PS1="\$? \A \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;10m\]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\][\w]  `__git_ps1`\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"
elif [[ $USERNAME == "mariusl" ]] ; then
				export PS1="\$? \A \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;10m\]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\H:\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\][\w] `__git_ps1` \[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"
else
  export PS1="\$? \A \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\H:\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"
fi

#if [[ $HOSTNAME == "ir-l-155" ]]; then
#	getWeather;
#fi

