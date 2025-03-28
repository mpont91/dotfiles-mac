.PHONY: defaults brew ohmyzsh link vscode

defaults:
	./configs/defaults.sh

brew:
	./brew/brew-setup.sh

ohmyzsh:
	./ohmyzsh/ohmyzsh-setup.sh

link:
	./link-dotfiles.sh

vscode:
	xargs -n 1 -I {} code --install-extension {} --force < ./vscode/extensions
