export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTTIMEFORMAT='%b %d %H:%M:%S: '

shopt -s histappend
set cmdhist

# when displaying a prompt, write previous line to disk
PROMPT_COMMAND='history -a'
