echo "[\e[31mInitializing zshrc\e[0m ]"

#Change ZSH Options

#Create Aliases
alias ls='exa -laFhg --git'
alias man=batman
alias bbd='brew bundle dump -f --describe'
alias grep=batgrep
alias trail='<<<${(F)path}'
alias rm=trash
alias nano=micro

#Customize Promts

# Set named color variables in the prompt
# Define prompt color variables
PROMPT_PARANTHESIS_COLOR='%F{orange}'
PROMPT_VALUE_COLOR='%F{red}'
PROMPT_RESET_COLOR='%f%b'  # Reset text formatting

PROMPT="${PROMPT_PARANTHESIS_COLOR}[${PROMPT_VALUE_COLOR}%B%7~%b${PROMPT_PARANTHESIS_COLOR}]-[${PROMPT_VALUE_COLOR}%B%L%b${PROMPT_PARANTHESIS_COLOR}]-[${PROMPT_VALUE_COLOR}%B%#%b${PROMPT_PARANTHESIS_COLOR}]${PROMPT_RESET_COLOR} "
RPROMPT="${PROMPT_PARANTHESIS_COLOR}[%*]${PROMPT_PARANTHESIS_COLOR}"

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
