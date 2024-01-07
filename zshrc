echo "Hello from ZSHRC"
#set Variables 
export HOMEBREW_CASK_OPTS=" --no-quarantine"

#Change ZSH Options

#Create Aliases
alias ls="exa -laFh --git"
alias man=batman
alias bat=batwatch

#Customize Promts
PROMPT='
%1~ %L %# '
RPROMPT='%*'

#Add location to the $PATH variables

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

#Write handy functions
mkcd () {
  mkdir -p "$@" && cd "$_"
}

#use ZSH plugins 

#... other suprises
