#echo "[\e[31mInitializing zshenv\e[0m]"

#set Variables 
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

function exists(){
  #command -v similar to which
  command -v $1 >/dev/null 2>&1
}

#Customize Promts
PROMPT_BRACKET_COLOR='%F{orange}'
PROMPT_VALUE_COLOR='%F{red}'
PROMPT_RESET_COLOR='%f%b'  
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \([^ ]*\)/[${PROMPT_VALUE_COLOR}\1${PROMPT_RESET_COLOR}]-/"
}
function set_prompt() {
    PROMPT="${PROMPT_BRACKET_COLOR}[${PROMPT_VALUE_COLOR}%B%7~%b${PROMPT_BRACKET_COLOR}]-[${PROMPT_VALUE_COLOR}%B%L%b${PROMPT_BRACKET_COLOR}]-[${PROMPT_VALUE_COLOR}%B%#%b${PROMPT_BRACKET_COLOR}]${PROMPT_RESET_COLOR}"
}
function update_prompt() {
    set_prompt
    RPROMPT="$(parse_git_branch)${PROMPT_BRACKET_COLOR}[%*]${PROMPT_BRACKET_COLOR}"
}