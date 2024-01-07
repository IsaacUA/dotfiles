echo "Hello from ZSHRC"
#set Variables 

#Syntex highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#Change ZSH Options

#Create Aliases
alias ls='exa -lFh'

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
