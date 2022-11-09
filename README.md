# Dotfiles
This repository serves as my way to help me setup and maintain my PC

## Installation
Clone this repository to your home directory with the default folder name: `.dotfiles`

```shell
git clone https://github.com/mpont91/dotfiles.git .dotfiles
```

Move to the directory:
```shell
cd .dotfiles
```

Depending on your operating system follow the instructions with `make help`:

Usage commands:

Macos commands:

```
make mac-install-homebrew  // Install homebrew
```

```
make mac-defaults  // Sets default configuration
```

```
make mac-brew-bundle  // Install all applications from Brewfile
```

```
make mac-brew-dump  // Dump list of all applications overwriting Brewfile
```

Linux commands:
```
make linux-packages  // Install all packages
```

Non OS dependant commands:
```
make install-ohmyzsh  // Install ohmyzsh
```
```
make symlinks  // Create symlinks to apply all configuration
```


## Setting up a new mac

First thing to do is install Homebrew

```
make mac-install-homebrew
```

Install ohmyzsh too

```
make install-ohmyzsh
```

Create all configuration symlinks

```
make symlinks
```

Apply mac defaults

```
make mac-defaults
```

Install all other software

```
make mac-brew-bundle
```

And ready to use :D