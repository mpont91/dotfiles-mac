# Dotfiles
This repository serves as my way to help me setup and maintain my PC

## Installation
Clone this repository to your home directory with the default folder name: `dotfiles`

```shell
git clone git@github.com:mpont91/dotfiles.git
```

Move to the directory:
```shell
cd dotfiles
```

Depending on your operating system follow the instructions:

### Linux:
1. Install the default software running packages script

```shell
./os/linux/packages.sh
```

### MacOS:
1. Run mac defaults configuration
```shell
./os/macos/defaults.sh
```

2. Install homebrew with script

```shell
./os/macos/homebrew.sh
```

3. Run brewfile to install the default software

```shell
brew bundle --file=os/mac/brew/brewfile
```

## Configuration
Run setup script for configuring dotfiles. Usually are symlinks. This configuration is not OS dependant.

```shell
./setup.sh
```