# --- 1. Interactive Check ---
# Only run these settings for interactive sessions
[[ $- != *i* ]] && return

# --- 2. Readline Variable Settings ---
# Settings applied via 'bind' to modify Readline run-time behavior
bind 'set completion-ignore-case on'        # Case-insensitive filename completion
bind 'set completion-map-case on'           # Treat hyphens and underscores as equal
bind 'set show-all-if-ambiguous on'         # Show list immediately if multiple matches exist
bind 'set show-all-if-unmodified on'        # Show list if no common prefix can be completed
bind 'set mark-symlinked-directories on'    # Append slash to completed symlinked directories
bind 'set match-hidden-files off'           # Do not complete hidden files unless '.' is typed
bind 'set page-completions off'             # Disable internal pager for completion list
bind 'set completion-query-items 200'       # Ask to view only if matches exceed 200
bind 'set visible-stats on'                 # Append file type indicators (e.g. / for dirs)
bind 'set skip-completed-text on'           # Do not duplicate text when completing in mid-word
bind 'set colored-stats on'                 # Colorize completion list by file type
bind 'set colored-completion-prefix on'     # Colorize the common prefix of matches
bind 'set menu-complete-display-prefix on'  # Show prefix before cycling menu completion

# --- 3. Key Bindings ---
# Navigation and History Search
bind '"\e[A": history-search-backward'      # Up arrow: search history for current input
bind '"\e[B": history-search-forward'       # Down arrow: search history forward
bind '"\e[1;5C": forward-word'              # Ctrl+Right: move forward one word
bind '"\e[1;5D": backward-word'             # Ctrl+Left: move backward one word
bind 'TAB: menu-complete'                   # TAB: cycle through matches instead of listing

# --- 4. Shell Options (shopt) ---
shopt -s autocd                             # Enter directory by typing its name
shopt -s cdspell                            # Correct minor spelling errors in 'cd'
shopt -s dirspell                           # Correct spelling in directory names during completion
shopt -s checkwinsize                       # Update LINES/COLUMNS after each command
shopt -s globstar                           # Recursive globbing with ** (e.g. ls **/*.mp3)
shopt -s extglob                            # Enable extended pattern matching (e.g. !(pattern))
shopt -s histappend                         # Append to history file instead of overwriting

# --- 5. History Management ---
HISTCONTROL=ignoreboth:erasedups            # Ignore dups/space AND remove older dups from list
HISTSIZE=5000                               # Remember 5000 commands in session
HISTFILESIZE=10000                          # Store 10000 commands in history file

# Sync history across all open terminal tabs immediately
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# --- 6. Custom Aliases ---
alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'

# --- 7. Prompt (JetBrainsMono Nerd Font Optimized) ---
PS1="\[\e[38;2;203;166;247m\]\u \[\e[38;2;108;112;134m\]at \[\e[38;2;116;199;236m\]\h \[\e[38;2;108;112;134m\]in \[\e[38;2;166;227;161m\]\w\[\e[0m\]\n\[\e[38;2;243;139;168m\]$ \[\e[0m\]"

# --- 8. External Scripts & Startup ---
[[ -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

# Run fastfetch if available
type -p fastfetch >/dev/null && fastfetch
