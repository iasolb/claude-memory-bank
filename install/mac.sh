#!/usr/bin/env bash
# Symlinks this repo's tracked config into ~/.claude.
# Run from anywhere; resolves paths relative to this script's location.
# Existing targets are backed up with a .bak suffix before being replaced,
# never silently overwritten.
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(dirname "$script_dir")"
claude_dir="$HOME/.claude"

items=(CLAUDE.md settings.json commands agents rules hooks)

mkdir -p "$claude_dir"

for item in "${items[@]}"; do
    source="$repo_root/$item"
    target="$claude_dir/$item"

    if [ -L "$target" ]; then
        rm "$target"
    elif [ -e "$target" ]; then
        mv "$target" "$target.bak"
        echo "Backed up existing $item to $item.bak"
    fi

    ln -s "$source" "$target"
    echo "Linked $item"
done

# Cross-machine session memory: link the home-dir project's memory dir to the
# repo's memory/ so memories written on either machine sync through git.
# Claude Code derives the project key from $HOME by swapping path separators
# for dashes (/Users/ian -> -Users-ian).
memory_source="$repo_root/memory"
project_key="$(echo "$HOME" | tr '/' '-')"
memory_target="$claude_dir/projects/$project_key/memory"

mkdir -p "$(dirname "$memory_target")"
if [ -L "$memory_target" ]; then
    rm "$memory_target"
elif [ -e "$memory_target" ]; then
    mv "$memory_target" "$memory_target.bak"
    echo "Backed up existing memory dir to memory.bak"
fi
ln -s "$memory_source" "$memory_target"
echo "Linked memory"
