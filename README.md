# Dotfiles
This repository contains my personal configuration files for setting up a Unix-based development environment. These dotfiles focus on minimalism and ensure consistent color schemes and keybindings across applications.

## Contents

- **Alacritty** (`~/.config/alacritty`)
  - Description: A GPU-accelerated terminal emulator.
  - Customizations: Color scheme | Keybindings.

- **Autorandr** (`~/.config/autorandr`)
  - Description: Lightweight utility for automatic management of display configurations.
  - Customizations: Display profiles.

- **Flameshot** (`~/.config/flameshot`)
  - Description: Easy-to-use screenshot tool.
  - Customizations: Color scheme

- **i3 Window Manager** (`~/.config/i3`)
  - Description: A tiling window manager (X11 design).
  - Customizations: Color scheme | Keybindings | Layout tweaks | Scripts.

- **Neovim** (`~/.config/nvim`)
  - Description: A modern, highly efficient terminal text editor.
  - Customizations: Color scheme | Keybindings | Auto-commands.

- **Rofi** (`~/.config/rofi`)
  - Description: Fast and customizable application launcher.
  - Customizations: Color scheme | Keybindings.

- **Zsh** (`~/.zshrc`)
  - Description: A powerful, enhanced version of the Bourne shell.
  - Customizations: Aliases | Keybindings.

## Installation
> ⚠️ Warning: These dotfiles are tailored for personal use. Please review and adapt them before applying to your system.

Clone the repository:
```bash
git clone https://github.com/the-404-john/dotfiles ~/.config
cp ~/.config/zsh/zshrc ~/.zshrc
cd ~/.config
