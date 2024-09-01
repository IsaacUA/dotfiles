
#echo "[\e[31mInitializing zshrc\e[0m ]"
fortune | cowsay
#Change ZSH Options

#Create Aliases
alias ls='eza -lahg --git --icons'
alias ~=cd ~
alias ..="cd .."
alias man=batman
alias bbd='brew bundle dump -f --describe'
alias lzd=lazydocker
alias trail='<<<${(F)path}'
alias lzg=lazygit
alias rm=trash
alias nano=micro
alias vim=nvim
alias fnm='find . -name 'node_modules' -type d -prune'
alias fm="fzf --preview='bat --color=always --style=numbers {}' | xargs"
alias python=python3

#Add location to the path array variables
typeset -U path
path=(
  "$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

#Write handy functions

#use ZSH plugins 

#... other suprises
eval "$(starship init zsh)"


export PATH="/opt/homebrew/opt/dotnet@6/bin:$PATH"
