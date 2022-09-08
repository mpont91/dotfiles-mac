.PHONY: mac-defaults
mac-defaults:
	./os/macos/defaults.sh

.PHONY: mac-homebrew
mac-homebrew:
	./os/macos/homebrew.sh

.PHONY: mac-brew
mac-brew:
	brew bundle --file=os/mac/brew/brewfile

.PHONY: linux-packages
linux-packages:
	./os/linux/packages.sh
