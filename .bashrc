# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Alias definitions
alias ll='ls -la'
alias grep='grep --color=auto'
alias df='df -h'
alias free='free -m'
alias ..='cd ..'
alias ...='cd ../..'
alias neo='neofetch'
alias la='ls -a'

# Custom functions
mkcd () {
    mkdir -p "$1" && cd "$1"
}


extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Git branch in prompt
parse_git_branch() {
    git branch 2>/dev/null | grep -e '^*' | sed 's/* \(.*\)/ (\1)/'
}

# Color definitions
RED='\[\e[31m\]'
DARK_RED='\[\e[38;5;88m\]'
GREY='\[\e[90m\]'
BLACK='\[\e[30m\]'
RESET='\[\e[0m\]'
LIGHT_BLUE='\[\e[1;34m\]'
ORANGE='\[\e[38;5;208m\]'

# PS1 prompt
PS1="${RED}\u${RESET}@${DARK_RED}Aperture ${GREY}\w${ORANGE}\$ "

# Enable color support for `ls` and add handy aliases
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Load bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
