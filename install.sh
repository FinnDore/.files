# Setup
brew install git youtube-dl
git clone https://github.com/FinnDore/.files/
cd .files

# Starship
mkdir -p ~/.config/
cp .starship.toml  ~/.config/

# ZSH
cp ./.zprofile ~/.zprofile

# Fonts 
cp ./fonts/* ~/Library/Fonts