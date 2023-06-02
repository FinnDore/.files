
eval "$(starship init zsh)"
# Aliases
# Vs code
alias c='code .'
alias ll="ls -l"

# Docker
alias dcu='docker compose up $1'
alias dcd='docker compose down -v $1'
alias dcb='docker compose build $1'
alias dck='docker kill $(docker ps -q)'

# Doppler
alias d='doppler run -- $1'

# Windows habbits
alias cls=clear

export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

cd ~/Documents/GitHub

if [ $PWD = "/Home/$(whoami)" ]; then
    cd ~/Documents/GitHub
fi
