#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

if ! command -v pacman >/dev/null 2>&1; then
    echo "This script is written for Arch Linux (pacman)." >&2
    exit 1
fi

echo "==> Ensuring yay is installed"
if ! command -v yay >/dev/null 2>&1; then
    tmpdir="$(mktemp -d)"
    sudo pacman -S --needed --noconfirm base-devel git
    git clone --depth 1 https://aur.archlinux.org/yay.git "$tmpdir/yay"
    (cd "$tmpdir/yay" && makepkg -si --noconfirm)
    rm -rf "$tmpdir"
fi

echo "==> Installing packages from pkgs.txt"
mapfile -t PACKAGES < <(sed '/^[[:space:]]*# AUR$/,$d' pkgs.txt | sed '/^[[:space:]]*#/d;/^[[:space:]]*$/d')
sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

echo "==> Installing AUR packages from pkgs.txt"
mapfile -t AUR_PACKAGES < <(sed -n '/^[[:space:]]*# AUR$/,$p' pkgs.txt | sed '/^[[:space:]]*#/d;/^[[:space:]]*$/d')
if ((${#AUR_PACKAGES[@]} > 0)); then
    yay -S --needed --noconfirm "${AUR_PACKAGES[@]}"
fi

echo "==> Ensuring stow is installed"
command -v stow >/dev/null 2>&1 || sudo pacman -S --needed --noconfirm stow

echo "==> Stowing user configs to $HOME/.config"
mkdir -p "$HOME/.config"
for entry in config/*/; do
    name="$(basename "$entry")"
    target="$HOME/.config/$name"
    if [[ -e "$target" && ! -L "$target" ]]; then
        backup="$target.bak.$(date +%Y%m%d)"
        mv "$target" "$backup"
        echo "Backed up $target -> $backup"
    fi
done
stow --target="$HOME/.config" --restow config

chmod a-w "$HOME/.config/btop/btop.conf"

echo "Done."
