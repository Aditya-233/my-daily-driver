[[ $- != *i* ]] && return

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set show-all-if-unmodified on'
bind 'set mark-symlinked-directories on'
bind 'set match-hidden-files off'
bind 'set page-completions off'
bind 'set completion-query-items 200'
bind 'set visible-stats on'
bind 'set skip-completed-text on'
bind 'set colored-stats on'
bind 'set menu-complete-display-prefix on'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind 'TAB: menu-complete'

shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE="${HISTSIZE}"

if [[ ! -v BASH_COMPLETION_VERSINFO && -f /usr/share/bash-completion/bash_completion ]]; then
  echo "Loading bash-completion..."
  source /usr/share/bash-completion/bash_completion
  echo ".bashrc loaded"
fi

PS1="\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;35m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ "
