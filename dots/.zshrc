# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

eval "$(rbenv init -)"
eval "$(jenv init -)"
eval "$(goenv init -)"
eval "$(pyenv init -)"

# Plugins
plugins=(
  git
  vscode
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
)

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"

  function title() {
    TITLE="\[\e]2;$*\a\]"
    echo -e ${TITLE}
  }
}

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=239'
ZSH_THEME="common"

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

neofetch
