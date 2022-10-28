.PHONY: help
help:
	@echo "Usage commands:"
	@echo
	@echo Macos commands:
	@echo "> make mac-homebrew  // Install homebrew"
	@echo "> make mac-defaults  // Sets default configuration"
	@echo "> make mac-brew-bundle  // Install all applications from Brewfile"
	@echo "> make mac-brew-dump  // Dump list of all applications overwriting Brewfile"
	@echo
	@echo Linux commands:
	@echo "> make linux-packages  // Install all packages"
	@echo
	@echo Non OS dependant commands:
	@echo "> make setup  // Add symlinks to apply all configuration"

.PHONY: mac-homebrew
mac-homebrew:
	./os/mac/configs/homebrew.sh

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

.PHONY: setup
setup:
	./setup.sh
