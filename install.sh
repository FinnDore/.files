# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ZSH
echo Setting up ZSH
cp .zprofile ~/.zprofile
source ~/.zprofile
cp .bashrc ~/.bashrc

# Setup
echo installing packages and apps
brew install git youtube-dl stripe/stripe-cli/stripe gnupg dopplerhq/cli/doppler docker docker-compose colima gh pinentry-mac tailscale
brew install --cask visual-studio-code discord warp microsoft-edge github figma nordpass raycast btop arc gimp

git clone https://github.com/FinnDore/.files/
cd .files

# commit signing
echo "pinentry-program $(which pinentry-mac)" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent

# Vs code 
mkdir -p ~/Library/Application Support/Code/User
cp .vscode/settings.json ~/Library/Application Support/Code/User/
cp .vscode/keybindings.json ~/Library/Application Support/Code/User/

# Nvim
cp -r -p nvim ~/.config/nvim

# Node 
echo Installing Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
nvm use --lts

# Rust
echo Installing rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | ssh -s -- -y
rustup component add clippy
rustup install cargo-insta

# Starship
echo Instaling Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
mkdir -p ~/.config/
cp .starship.toml  ~/.config/

# warp
mkdir -p ~/.warp/themes
cp .warp/themes/* ~/.warp/themes

# Fonts 
echo Installing Fonts
cp ./fonts/* ~/Library/Fonts

# Desktop Pictures
echo Setting desktop background
sh set-desktop-picture.sh $(pwd)/backgrounds/background.png
cp -R ./emojis ~/Pictures/emojis

# Mac shit
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

cat other.md

cd ..
rm -r .files
