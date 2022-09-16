# Setup
echo installing git and youtube-dl
brew install git youtube-dl
git clone https://github.com/FinnDore/.files/
cd .files

# ZSH
cp ./.zprofile ~/.zprofile
source ~/.zprofile

# Starship
echo Instaling Starship
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config/
cp .starship.toml  ~/.config/

# Fonts 
cp ./fonts/* ~/Library/Fonts