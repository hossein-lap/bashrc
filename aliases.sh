#!/bin/bash
#  _  _
# | || | github: hossein-lap
# | __ | email:  hosteam01@gmail.com
# |_||_| matrix: hosaidenpwd:matrix.org
#

#alias sudo="doas"

alias c='clear'
alias q="exit"
alias x='startx'

alias lf="lfub"
alias mdp="mdp -f"

alias exa="exa --sort extension --group-directories-first"
alias tree='exa -T --icons'
alias ts='exa -T --icons -L 1'
alias l="exa"
alias ll="l -l --icons"
alias la="l -a --icons"
alias cls="clear; ll"
alias cl="clear; ls"
alias ls='ls -X --color=auto --group-directories-first'

alias tb="nc termbin.com 9999"
alias links="links -download-dir $HOME/dl/"
alias aria2c='aria2c -m 0 -x 16 -c'
alias ddg='links https://duckduckgo.com'

alias pwgen='pwgen -s'
alias psgen='pwgen'
alias psgn='pwgen'
alias pwgn='pwgen'

alias t='tmux'
alias sc='screen'
alias m='cmus'

alias poweroff='shutdown -h now'

alias screenfetch='screenfetch -w'
alias fetchmaster='fm6000 -r -c random'
alias fm4000="fm4000 -de dwm -w -r -c random"
alias neofetch='neofetch --ascii_distro arch_small'

alias clear="clear && printf '\e[3J'"

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias grep='grep --color=auto'
alias lat='bat -n --style=plain --paging=always'
alias bat='bat -P --style=plain'
alias plow="glow -p"
alias lolcat='lolcat -S 7'

alias ..="cd .."
alias ...="cd ../.."

alias gln='git clone'
alias gss="git status -s"
alias gic="git init && git add . && git commit -m 'Create repo'"
alias glg="git log --oneline --all --graph"
alias gls="git log --stat --oneline --all --graph"
alias gll="git log --stat --show-signature"

alias vi="nvim -u ~/.vim/plain.vim"
alias ed="ed -p ':'"
alias em="emacsclient -c -a 'emacs'"

alias gpg-agent-reload="gpg-connect-agent reloadagent /bye"
