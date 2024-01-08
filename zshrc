echo "Hello from zshrc"
#set Variables 
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
#Change ZSH Options

#Create Aliases
alias ls='exa -laFhg --git'
alias man=batman
alias bbd='brew bundle dump -f --describe'
alias grep=batgrep
alias trail='<<<${(F)path}'
alias rm=trash

#Customize Promts
PROMPT='
%1~ %L %# '
RPROMPT='%*'

#Add location to the path array variables
typeset -U path
path=(
  "$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

#Write handy functions
function mkcd () {
  mkdir -p "$@" && cd "$_"
}



#use ZSH plugins 

#... other suprises
