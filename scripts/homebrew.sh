# Check for homebrew and install if needed
echo "Installing homebrew ..."

which -s brew
if [[ $? != 0 ]] ; then
  yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed ..."
fi

brew update

# GNU core utilities
brew install coreutils
brew install moreutils
brew install findutils
brew install grep --with-default-names

# Install zsh
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install tree

# Highlighting
brew install source-highlight

# Git
brew install git
brew install cdiff

# Development
brew install rbenv
brew install ruby
brew install jenv
brew install goenv
brew install go
brew install pyenv
brew install python2
brew install python
brew install node
brew install nvm
brew install sqlite
brew install yarn

# AWS
brew install awscli

# Other
brew install mas
brew install tmux
brew install neovim
brew install neofetch
brew install wget --with-iri
brew install openssh
brew install rlwrap
brew install tree
brew install hub

brew cleanup
