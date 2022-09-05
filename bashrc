#!/bin/bash
#  _  _ ___
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#
## bash settings
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# pervent to end a session by once 'C-d' [twice will do]
export IGNOREEOF=1

## bat as manpager
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## History
# When shell exist, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
shopt -s checkwinsize
# ignore repeated commands (one command repeatedly)
HISTCONTROL=ignoreboth
# history size
HISTSIZE=4096
HISTFILESIZE=4096
# multiple history file for each session
if [[ ! -d $HOME/.shist ]]; then
	mkdir $HOME/.shist
fi
export HISTFILE="$HOME/.shist/bash_` date '+%y%m%d'`"

## path variable
append_to_path () {
	if [[ -d "$1" ]]; then
		export PATH="${1}:$PATH"
	fi
}

append_to_path "$HOME/.local/bin/texlive/bin/x86_64-linux"
append_to_path "$HOME/bin"
append_to_path "$HOME/.bin"
append_to_path "$HOME/.local/bin"
#append_to_path "$HOME/.local/bin"
append_to_path "$HOME/.emacs.d/bin"
append_to_path "$HOME/.local/dev/hossein-lap/scripts"
append_to_path "$HOME/.cargo/bin"

## set bash_alias file
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
if [ -f ~/.aliases.sh ]; then
  . ~/.aliases.sh
fi

## Terminal-specific shell prompt
#  α ›
case "$TERM" in
linux)
	PS1="[\u@\h \W]\[\033[01;00m\]\$ "
	  ;;
tmux*color|screen*256color*)
	PS1="\[\033[01;34m\] ϑ \[\033[01;32m\]\W \[\033[00m\]"
	  ;;
st*color)
	PS1="\[\033[01;32m\] Σ \[\033[01;35m\]\W \[\033[00m\]"
	  ;;
alacritty)
	PS1="\[\033[01;32m\] → \[\033[01;35m\]\W \[\033[00m\]"
	  ;;
screen|termite)
	PS1="[\u@\h:\W]\[\033[01;00m\]\$ "
	  ;;
*)
	PS1="\[\033[01;32m\] » \[\033[01;35m\]\W \[\033[00m\]"
	  ;;
esac

## gpg-agent
export GPG_TTY=$(tty)

alias s="source ~/.bashrc"
## bat colorscheme
#"Solarized (dark)" "gruvbox-dark"
#"Nord" "Dracula"
export BAT_THEME="Dracula"

## locale/timezone settings
#export TZ="Tehran"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

## Other global variables
export EDITOR=nvim

