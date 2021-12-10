#
# ~/.bashrc

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

# Custom bash prompt
export PS1="${bold}${green}${title}${bold}${blue}\w ${bold}${cyan}\$(git_branch)${clear_attributes}${white}"

# Aliases
alias die='shutdown -h now'
alias new='reboot'
alias flex='neofetch' 
alias v='nvim'
alias c='clear'
alias e='exit'
alias t='tmux new -s project'

# Pacman aliases
alias u='sudo pacman -Syu'
alias i='sudo pacman -S'
alias yeet='sudo pacman -Rns'
alias orphans='pacman -Qtdq'
alias rmorphans='sudo pacman -Rns $(pacman -Qtdq)'

# Config aliases
alias i3edit='nvim ~/.config/i3/config'
alias polyedit='nvim ~/.config/polybar/config'
alias picomedit='nvim ~/.config/picom/picom.conf'
alias dunstedit='nvim ~/.config/dunst/dunstrc'
alias bedit='nvim ~/.bashrc'
alias flexedit='nvim ~/.config/neofetch/config.conf'

# Git aliases
alias g="git"
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gl='git pull'
alias gp='git push'
alias gr="git rebase"
alias glo="git log --pretty=oneline --graph --decorate --all"



# Where should I put you?
bind -x '"\C-g": . ~/.config/scripts/tmux-sessionizer.sh'
