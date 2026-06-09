#!/usr/bin/env bash
set -euo pipefail

cd templates

for src in ../../Templates/*.md; do
    name=$(basename "$src")

    if [ ! -e "$name" ]; then
        # Create symlink from ../Templates to templates for all *.md in ../Templates
        ln -s "$src" "$name"

        # Ensure all symlinks to files in ../Templates is ignored by git
        if ! grep -Fxq "templates/$name" ../.gitignore; then
            echo "templates/$name" >> ../.gitignore
        fi
    fi
done
