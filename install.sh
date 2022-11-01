# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ZSH
echo Setting up ZSH
cp ./.zprofile ~/.zprofile
source ~/.zprofile
cp ./.bashrc ~/.bashrc

# Setup
echo installing packages and apps
brew install git youtube-dl stripe/stripe-cli/stripe gnupg dopplerhq/cli/doppler
brew install --cask visual-studio-code discord warp microsoft-edge github figma nordpass raycast

git clone https://github.com/FinnDore/.files/
cd .files

# Vs code 
cp ./.vscode/settings.json ~/Library/Application Support/Code/User/
cp ./.vscode/keybindings.json ~/Library/Application Support/Code/User/

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

# Fonts 
echo Installing Fonts
cp ./fonts/* ~/Library/Fonts

# Desktop Pictures
echo Setting desktop background
sh set-desktop-picture.sh $(pwd)/backgrounds/background.tif
cp -R ./emojis ~/Pictures/emojis

cat ./other.md

cd ..
rm -rf .files