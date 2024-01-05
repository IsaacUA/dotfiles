echo "Hello from ZSHRC"
#set Variables 

#Change ZSH Options

#Create Aliases
alias ls='ls -lAFhG'

#Customize Promts
PROMPT='
%1~ %L %# '
RPROMPT='%*'

#Add location to the $PATH variables

#Write handy functions
mkcd () {
  mkdir -p "$@" && cd "$_"
}

#use ZSH plugins 

#... other suprises