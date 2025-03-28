# Path to your dotfiles
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="eastwood"

# Plugins
plugins=()

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Custom plugins installed via Homebrew
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
source $DOTFILES/terminal/.aliases