# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh
source $HOME/.spaceshiprc.zsh

######################
# User configuration #
######################

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias src=". ~/.zshrc"
alias apt="sudo apt-get"
alias zreload="src && exec zsh"
alias gpush="git commit -m 'gpush' && git push -u origin main"

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

source ~/.zplug/init.zsh

zplug "agkozak/zsh-z"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"

# Then, source plugins and add commands to $PATH
zplug load