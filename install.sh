# Setup
echo installing git, youtube-dl, stripe/stripe-cli/stripe gnupg dopplerhq/cli/doppler
brew install git youtube-dl stripe/stripe-cli/stripe gnupg dopplerhq/cli/doppler
git clone https://github.com/FinnDore/.files/
cd .files

# ZSH
echo Setting up ZSH
cp ./.zprofile ~/.zprofile
source ~/.zprofile

# Starship
echo Instaling Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
mkdir -p ~/.config/
cp .starship.toml  ~/.config/

# Fonts 
echo Installing Fonts
cp ./fonts/* ~/Library/Fonts