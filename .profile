export LANG=en_GB.UTF-8
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:/opt/local/sbin:$PATH
PATH=/usr/local/ActivePerl-5.16/bin:$PATH
PATH=/usr/local/ActivePerl-5.16/site/bin:$PATH
export PATH

# Aliases
alias dh='df -h'
alias irssi='TERM=screen-256color irssi'
alias ls='ls -h'

# Make for pretty colours
#export TERM='xterm-256color'
export TERM=screen-256color
export CLICOLOR=1

# LSColors
#export LSCOLORS=ExDx 

# Export it.
errstat=0
function chk_status {
    errstat="$?"
}

USERCOLOR="$(tput setab 42; tput setaf 29)"
ARROWCOLOR="$(tput setab 242; tput setaf 42)"
ERRCOLOR="$(tput setab 1; tput setaf 52)"
ARROWERRCOLOR="$(tput setab 242; tput setaf 1)"

CWDCOLOR="$(tput setaf 250)"
RESET=$(tput sgr0)
PROMPT_COMMAND=chk_status
source ~/.bash/git-prompt
export PS1='$( [ $errstat -eq 0 ] && echo "\[$USERCOLOR\] \u  \h \[$ARROWCOLOR\]" || echo "\[$ERRCOLOR\] \u  \h \[$ARROWERRCOLOR\]" )\[$CWDCOLOR\] \W $( __git_prompt )\[$RESET\] '


