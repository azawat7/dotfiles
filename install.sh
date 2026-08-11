#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

if ! command -v pacman >/dev/null 2>&1; then
    echo "This script is written for Arch Linux (pacman)." >&2
    exit 1
fi

echo "==> Installing packages from pkgs.txt"
mapfile -t PACKAGES < <(sed '/^[[:space:]]*#/d;/^[[:space:]]*$/d' pkgs.txt)
sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

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
