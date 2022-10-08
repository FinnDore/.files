
eval "$(starship init zsh)"
# Aliases
# Vs code
alias c='code .'

# Docker
alias dcu='docker-compose up $1'
alias dcd='docker-compose down -v $1'
alias dcb='docker-compose build $1'
alias dck='docker kill $(docker ps -q)'

# Windows habbits
alias cls=clear

export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"