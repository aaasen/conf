
# zsh history
HISTFILE=~/.zshist
HISTSIZE=1000
SAVEHIST=2048
setopt appendhistory autocd extendedglob nomatch notify

autoload -Uz compinit
compinit

autoload -U promptinit && promptinit
autoload -U colors && colors

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
alias vim=nvim

# setting prompt colors
if [ -n "$SSH_CLIENT" ]; then
    PS1="%{$fg[green]%}%B%m%b {%{$reset_color%}%{$fg[white]%}%{$reset_color%}%~} "
else
    PS1="%{$fg[black]%}%B%m%b {%{$reset_color%}%{$fg[white]%}%{$reset_color%}%~} "
fi

# vim prompt navigation
bindkey -v

# replace mac coreutils with GNU
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias ls="ls --color=auto --group-directories-first"
alias la="ls -a" #all files

# vim style navigaton with cd
alias j="cd .."
alias jj="cd ../.."
alias jjj="cd ../../.."
alias jjjj="cd ../../../.."

# cd into dir and then ls
function cd() {
    builtin cd "${@:-$HOME}" && ls -cr --color=auto --group-directories-first
}

alias cdb="cd ~/dev/go/src/github.com/allenai/beaker"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
