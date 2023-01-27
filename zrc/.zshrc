# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/bin:$PATH

######################
# User configuration #
######################

plugins=(
	1password
)

###########
# ALIASES #
###########

alias src=". ~/.zshrc"
alias apt="sudo apt-get"
alias zreload="src && exec zsh"
alias ls="exa -Ta --icons --level=1 --group-directories-first"

#############
# FUNCTIONS #
#############

function gpush() {
    git commit -m "gpush"
    git push
}

#####################################################
#  ________  _______  _____  _____  _____   ______  #
# |  __   _||_   __ \|_   _||_   _||_   _|.' ___  | #
# |_/  / /    | |__) | | |    | |    | | / .'   \_| #
#    .'.' _   |  ___/  | |   _| '    ' | | |   ____ #
# _/ /__/ | _| |_    _| |__/ |\ \__/ /  \ `.___]  | #
# |________||_____|  |________| `.__.'    `._____.' #
#                                                   #
#####################################################

################
# Load plugins #
################ 

source $HOME/.zplug/init.zsh

zplug "agkozak/zsh-z"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-completions", depth:1
zplug "agpenton/1password-zsh-plugin"


# Then, source plugins and add commands to $PATH
zplug load

##################################################################################
#  ________  _________  ________  ________  ________  ___  ___  ___  ________   
# |\   ____\|\___   ___\\   __  \|\   __  \|\   ____\|\  \|\  \|\  \|\   __  \  
# \ \  \___|\|___ \  \_\ \  \|\  \ \  \|\  \ \  \___|\ \  \\\  \ \  \ \  \|\  \ 
#  \ \_____  \   \ \  \ \ \   __  \ \   _  _\ \_____  \ \   __  \ \  \ \   ____\
#   \|____|\  \   \ \  \ \ \  \ \  \ \  \\  \\|____|\  \ \  \ \  \ \  \ \  \___|
#     ____\_\  \   \ \__\ \ \__\ \__\ \__\\ _\ ____\_\  \ \__\ \__\ \__\ \__\   
#    |\_________\   \|__|  \|__|\|__|\|__|\|__|\_________\|__|\|__|\|__|\|__|   
#    \|_________|                             \|_________|                      
#
###################################################################################

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
