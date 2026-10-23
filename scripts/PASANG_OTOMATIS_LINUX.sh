#!/bin/bash
set -e

PROTON_DIR="$HOME/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/localization"
FLATPAK_DIR="$HOME/.var/app/com.valvesoftware.Steam/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/localization"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PARENT_DIR="$(dirname "$SCRIPT_DIR")"

if [ -d "$HOME/.var/app/com.valvesoftware.Steam" ]; then
    TARGET_DIR="$FLATPAK_DIR"
else
    TARGET_DIR="$PROTON_DIR"
fi

mkdir -p "$TARGET_DIR"
cp -f "$PARENT_DIR/localization/id.lua" "$TARGET_DIR/"
cp -f "$PARENT_DIR/localization/en-us.lua" "$TARGET_DIR/"

echo "Status: Mod Bahasa Indonesia berhasil dipasang ke: $TARGET_DIR"
echo "Buka game Balatro di Steam dan pastikan pengaturan bahasa aktif."
