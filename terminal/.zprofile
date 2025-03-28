export DOTFILES="$HOME/.dotfiles"

# Load Homebrew environment (Apple Silicon)
source $DOTFILES/terminal/brew-config.zsh

# Load NVM
source $DOTFILES/terminal/nvm-config.zsh

# JetBrains Toolbox CLI
# Manually added to avoid automatic duplication by JetBrains Toolbox.
# This allows launching IDEs like `phpstorm` or `webstorm` from the terminal.
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# Visual Studio Code CLI
# Allows using `code .` to open folders from the terminal.
# This path is not automatically added, so we include it manually.
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# Language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
