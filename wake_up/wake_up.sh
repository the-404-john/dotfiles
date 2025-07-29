#!/usr/bin/env bash

if [[ -r /etc/os-release ]]; then
  source /etc/os-release
fi

if [[ "$ID" != "arch" ]]; then
    echo "Error : Deceted OS [ $NAME ] is not Arch-linux." >&2
    exit 1
fi

if (( EUID != 0 )); then
    echo "Error : Must be run with root permisions such as [ sudo ./$0 ]." >&2
    exit 1
fi

set -euo pipefail
IFS=$'\n\t'

official_packages=(
    make
    cmake
    clang

    gdb
    valgrind
    strace
    lldb
    ltrace

    man-db
    man-pages

    rust
    rust-analyzer

    python
    jupyter-notebook

    ghc
    ghc-libs
    ghc-static
    cabal-install

    linux
    fwupd
    linux-firmware
    base-devel

    openssh
    curl
    networkmanager

    noto-fonts
    xorg-fonts-type1
    ttf-dejavu
    ttf-liberation
    ttf-joypixels
    ttf-font-awesome
    ttf-nerd-fonts-symbols

    xorg
    xorg-xinit
    i3
    dmenu
    feh
    rofi

    alacritty
    neovim
    zsh

    qt6-base
    qt6-doc
    qt6-tools
    qtcreator

    nautilus
    firefox
    vlc
    discord
    flameshot
    spotify-launcher

    gimp
    gnome-calculator

    darcs
    mupdf
    obs-studio
)

aur_spec_packages=(
    asusctl
    supergfxctl
    asus-5606-fan-state-git
    linux-g14
    linux-mainline
)

echo "--> Updating package database and upgrading system..."
sudo pacman -Syu --noconfirm

echo "--> Installing official packages..."
sudo pacman -S --needed --noconfirm "${official_packages[@]}"

echo "--> Enabling services..."
sudo systemctl enable --now NetworkManager

echo "--> Setting defaults..."
xdg-mime default feh.desktop image/png
xdg-mime default feh.desktop image/jpeg
xdg-mime default feh.desktop image/jpg
xdg-mime default feh.desktop image/gif

chsh -s "/usr/bin/zsh" "$SUDO_USER"
