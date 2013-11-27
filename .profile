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

# Make for pretty colours
export TERM='xterm-256color'
export CLICOLOR=1

# LSColors
#export LSCOLORS=ExDx 

# Export it.
source ~/.bash/git-prompt
USERCOLOR="$(tput setab 42; tput setaf 29)"
ARROWCOLOR="$(tput setab 242; tput setaf 42)"
CWDCOLOR="$(tput setaf 250)"
RESET=$(tput sgr0)
export PS1="\[$USERCOLOR\] \u  \h \[$ARROWCOLOR\]\[$CWDCOLOR\] \W \$(__git_prompt)\[$RESET\] "


