.PHONY: help
help:
	@echo "Usage commands:"
	@echo
	@echo Macos commands:
	@echo "> make mac-install-homebrew  // Install homebrew"
	@echo "> make mac-defaults  // Sets default configuration"
	@echo "> make mac-brew-bundle  // Install all applications from Brewfile"
	@echo "> make mac-brew-dump  // Dump list of all applications overwriting Brewfile"
	@echo
	@echo Linux commands:
	@echo "> make linux-packages  // Install all packages"
	@echo
	@echo Non OS dependant commands:
	@echo "> make install-ohmyzsh  // Install ohmyzsh"
	@echo "> make symlinks  // Add symlinks to apply all configuration"

.PHONY: mac-install-homebrew
mac-install-homebrew:
	./os/mac/brew/homebrew.sh

.PHONY: mac-defaults
mac-defaults:
	./os/mac/configs/defaults.sh

.PHONY: mac-brew-bundle
mac-brew-bundle:
	brew bundle --file=os/mac/brew/brewfile

.PHONY: mac-brew-dump
mac-brew-dump:
	brew bundle dump --file=os/mac/brew/brewfile --force

.PHONY: linux-packages
linux-packages:
	./os/linux/packages.sh

.PHONY: install-ohmyzsh
install-ohmyzsh:
	./packages/ohmyzsh.sh

.PHONY: symlinks
symlinks:
	./symlinks.sh
