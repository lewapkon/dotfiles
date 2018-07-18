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
brew install gnu-sed --with-default-names

# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install more recent versions of some OS X tools.
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
brew install python
brew install python2
brew install delve
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
