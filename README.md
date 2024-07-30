# Dotfiles

Personal dotfiles based on my Linux system. No symlinks required.

* wezterm
* zsh
* tmux
* nvim
* fzf

Requirements:
* Git
* Curl
* Your favourite Nerd Font

## Using them on a new system

Define the alias (also, add it in `.zshrc` or `.bashrc`)
```bash
$ alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Run the bootstrap script. It will back up all pre-existing files that have a name collision inside a `.config-backup` directory:
```bash
$ curl https://raw.githubusercontent.com/efsbl/dotfiles/main/scripts/bootstrap.sh | sh
```

Alternatively, clone and check out the repository:
```bash
$ alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
$ git clone --bare https://github.com/efsbl/dotfiles.git $HOME/.dotfiles
$ dots config --local status.showUntrackedFiles no
$ dots checkout
```

Then back up or remove the files that have collisions if the following message appears:
```bash
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
Please move or remove them before you can switch branches.
Aborting
```

