#!/bin/sh

# Function to simplify git commands for the dotfiles repository
dots() {
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME "$@"
}

# Clone the dotfiles repository as a bare repository
git clone --bare https://github.com/efsbl/dotfiles $HOME/.dotfiles

# Create a backup directory for existing dotfiles
mkdir -p $HOME/.config-backup

# Attempt to check out the dotfiles repository
if ! dots checkout; then
    echo "Backing up pre-existing dot files..."
    
    # Backup existing dotfiles that would be overwritten by the checkout
    dots checkout 2>&1 | egrep "\s+\." | awk '{print $1}' | while read -r file; do
        if [ -e "$HOME/$file" ]; then
            mkdir -p "$HOME/.config-backup/$(dirname "$file")"
            mv "$HOME/$file" "$HOME/.config-backup/$file"
        fi
    done

    # Retry the checkout after backing up conflicting files
    dots checkout
fi

echo "Checked out config."

# Configure the dotfiles repository to ignore untracked files
dots config status.showUntrackedFiles no
