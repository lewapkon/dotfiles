source ./scripts/homebrew.sh
source ./scripts/cask.sh
source ./scripts/macos.sh
source ./scripts/zsh.sh
source ./scripts/symlinks.sh
mkdir -p $HOME/dev/go

echo "Sourcing .zshrc ..."
source "$HOME/.zshrc"
echo "Installation complete!"
