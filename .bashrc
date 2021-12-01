#
# ~/.bashrc
#
#message

#if [[ $DISPLAY ]]; then
#    if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#    exec tmux attach
#    fi
#fi

#now=$(date +"%r")
#echo "Hey ${USER}, the time is $now"
#/usr/bin/neofetch
#echo "Have a nice day!"
#echo ""

#function clear {
#now=$(date +"%r")
#/usr/bin/clear     
#echo "Hey ${USER}, the time is $now"
#/usr/bin/neofetch
#echo "Have a nice day!"
#echo ""
#}


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Colors
black="\[$(tput setaf 0)\]"
red="\[$(tput setaf 1)\]"
green="\[$(tput setaf 2)\]"
yellow="\[$(tput setaf 3)\]"
blue="\[$(tput setaf 4)\]"
magenta="\[$(tput setaf 5)\]"
cyan="\[$(tput setaf 6)\]"
white="\[$(tput setaf 7)\]"
purple="\[$(tput setaf 018)\]"
bold="\[$(tput bold)\]"


# Title bar - "user@host: ~"
title="\u@\h "
titlebar="\[\033]0;"$title"\007\]"

# Git branch
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)\ /';
}

# Clear attributes
clear_attributes="\[$(tput sgr0)\]"

# Custom bash prompt - "➜  ~ (master) "
export PS1="${bold}${green}${title}${bold}${blue}\w ${bold}${cyan}\$(git_branch)${clear_attributes}${white}"

#green color for normal users
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

# indian red -> prompt
#PS1='\[\e[0;1;38;5;203m\][\[\e[0;1;38;5;203m\]\u\[\e[0;1;38;5;203m\]@\[\e[0;1;38;5;203m\]\h \[\e[0;1;38;5;32m\]\W\[\e[0;1;38;5;203m\]]\[\e[0;1;38;5;203m\]$ \[\e[0m\]'  
# dracula
#PS1='\[\e[0;38;5;212m\][\[\e[0;38;5;212m\]\u\[\e[0;38;5;212m\]@\[\e[0;38;5;212m\]\h \[\e[0;38;5;139m\]\w\[\e[0;38;5;212m\]]\[\e[0;38;5;212m\]$ \[\e[0m\]'


# Aliases
alias die='shutdown -h now'
alias new='reboot'
alias u='sudo pacman -Syu'
alias c='clear'
alias e='exit'
alias v='nvim'
alias sv='sudo nvim'
alias i='sudo pacman -S'
alias yeet='sudo pacman -Rns'
alias flex='neofetch' 
alias t='tmux new -s project'
alias i3edit='nvim ~/.config/i3/config'
alias polyedit='nvim ~/.config/polybar/config'
alias picomedit='nvim ~/.config/picom/picom.conf'
alias dunstedit='nvim ~/.config/dunst/dunstrc'
alias bedit='nvim ~/.bashrc'
alias bloqfix='xmodmap .Xmodmap'
alias flexedit='nvim ~/.config/neofetch/config.conf'

# Where should I put you?
bind -x '"\C-g": . ~/.config/scripts/tmux-sessionizer.sh'
