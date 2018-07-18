symlink_dotfile() {
  ln -sfv $(grealpath $1) "$HOME/$1"
}

symlink() {
  ln -sfv $(grealpath $1) "$HOME/$1"
}

echo "Creating symlinks ..."

pushd ./dots
symlink_dotfile .aliases
symlink_dotfile .exports
symlink_dotfile .functions
symlink_dotfile .gitconfig
symlink_dotfile .gitignore
symlink_dotfile .gitmessage
symlink_dotfile .hyper.js
symlink_dotfile .tmux
symlink_dotfile .vimrc
symlink_dotfile .wgetrc
symlink_dotfile .zshrc

# SSH
mkdir "$HOME/.ssh"
ln -sfv $(grealpath ssh-config) "$HOME/.ssh/config"
popd

# ZSH/Terminal
mkdir -p $HOME/.oh-my-zsh/themes
ln -s ~/dotfiles/zsh/common.zsh-theme $HOME/.oh-my-zsh/themes/common.zsh-theme

# Directories

# Remove first so folders don't become nested if this runs more than once
rm "~/.bin"

symlink .bin
sudo chmod +x ~/.bin/*
