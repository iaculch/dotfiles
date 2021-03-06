#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# autocompletes
source /usr/share/git/completion/git-completion.bash
# branch name in prompt
source /usr/share/git/completion/git-prompt.sh

#nvm
source /usr/share/nvm/init-nvm.sh

# sound card
export ALSA_CARD=PCH

# ls colours
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# HiDPI
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export ELM_SCALE=1.5

# Golang
export GOPATH=/home/christian/src/go
export PATH=$PATH:$GOPATH/bin

# Grunt
#export NPM_CONFIG_PREFIX="${HOME}/.node"
#export PATH="${NPM_CONFIG_PREFIX}/bin:${PATH}"
