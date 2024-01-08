echo "[\e[31mInitializing zshenv\e[0m]"

#set Variables 
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

function exists(){
  #command -v similar to which
  command -v $1 >/dev/null 2>&1
}

