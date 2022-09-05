#
#  _  _ ___
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#
#
#alias sudo="doas"

alias lf="lfub"

alias exa="exa --sort extension --group-directories-first"
alias tree='exa -T --icons'
alias ts='exa -T --icons -L 1'

alias tb="nc termbin.com 9999"
alias l="exa"
alias ll="l -l --icons"
alias la="l -a --icons"

alias cls="clear; ll"
alias cl="clear; ls"

alias ls='ls -X --color=auto --group-directories-first'

alias c='clear'

alias links="links -download-dir $HOME/Downloads/linksdl"

alias aria2c='aria2c -x16 -c'
alias ddg='links https://duckduckgo.com'

alias tmh='tmux new -s hos'

alias pwgen='pwgen -s'
alias psgen='pwgen'
alias psgn='pwgen'
alias pwgn='pwgen'

alias t='tmux'
alias sc='screen'
alias x='startx'
alias m='cmus'
alias q="exit"
alias em="emacsclient -c -a 'emacs'"

alias poweroff='shutdown -h now'
alias screenfetch='screenfetch -w'
alias fetchmaster='fm6000 -r -c random'
alias clear="clear && printf '\e[3J'"

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias grep='grep --color=auto'

alias lat='bat -n --style=plain --paging=always'
alias bat='bat -P --style=plain'
alias plow="glow -p"
alias ed="ed -p ':'"
alias lolcat='lolcat -S 7'

alias neofetch='neofetch --ascii_distro void_small'
alias ssrcp='date '\''+%H %M %S'\'' | figlet -f small | lolcat'

alias ..="cd .."
alias ...="cd ../.."

alias gln='git clone'
alias gss="git status -s"
alias gic="git init && git add . && git commit -m 'Create repo'"
alias glg="git log --oneline --all --graph"
alias gls="git log --stat --oneline --all --graph"
alias gll="git log --stat --show-signature"

alias msm="make && sudo make install"

alias vi="vim -u ~/.vim/plain.vim"

alias fm4000="fm4000 -de dwm -w -r -c random"

alias gpg-agent-reload="gpg-connect-agent reloadagent /bye"

