# ⚙️ Dotfiles

This repository contains my personal dotfiles to set up and maintain a clean development environment on macOS.

It includes configuration for:

- Terminal (Zsh + Oh My Zsh)
- Git
- Vim
- Homebrew packages
- macOS system defaults
- Editor and tool preferences

## 🚀 Installation

First, clone this repository into your home directory with the default name `.dotfiles`:

```bash
git clone git@github.com:mpont91/dotfiles.git ~/.dotfiles
```

Then run the setup using the provided Makefile commands:

## 🔧 Setup Steps

### 1. Apply macOS system defaults

This configures sensible preferences for the system, Finder, Dock, keyboard, etc.

```bash
make defaults
```

### 2. Install Homebrew and packages

Installs Homebrew (if not already installed) and all packages listed in Brewfile.

```bash
make brew
```

### 3. Install Oh My Zsh

Installs Oh My Zsh (only if not already present) without modifying .zshrc.

```bash
make ohmyzsh
```

### 4. Install VS Code extensions

Installs a minimal list of essential VS Code extensions (ESLint, Prettier, Vue, React, Astro, etc.).

```bash
make vscode
```

### 5. Create symlinks

Links your configuration files (.zshrc, .aliases, .vimrc, .gitconfig, etc.) to your home directory.

```bash
make link
```

### 6. Raycast (manual step)

1. Open Raycast > Settings > General

   Set ⌘ + Space as the hotkey for opening Raycast.

2. Disable Spotlight shortcut

   **(This shortcut is disabled automatically by the defaults script, but it still requires a restart or logout to take effect)**

   To double-check or disable it manually:

   - Go to System Settings > Keyboard > Keyboard Shortcuts > Spotlight

   - Disable default shortcut for "Show Spotlight search" (⌘ + Space)

3. Create your own global app shortcuts

   Go to Raycast > Settings > Extensions > Application Search

   Default shortcuts:

   ^ + ⌥ + ⌘ + G → Brave

   ^ + ⌥ + ⌘ + G → Discord

   ^ + ⌥ + ⌘ + F → Finder

   ^ + ⌥ + ⌘ + M → MS Teams

   ^ + ⌥ + ⌘ + O → Outlook

   ^ + ⌥ + ⌘ + I → Phpstorm

   ^ + ⌥ + ⌘ + S → Spotify

   ^ + ⌥ + ⌘ + T → Terminal

   ^ + ⌥ + ⌘ + C → VS Code
