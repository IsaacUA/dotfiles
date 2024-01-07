echo "Hello from ZSHRC"
#set Variables 
export HOMEBREW_CASK_OPTS=" --no-quarantine"

#Change ZSH Options

#Create Aliases
alias ls="exa -laFhg --git"
alias man=batman

alias grep=batgrep

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
