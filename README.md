# Dotfiles

Personal setup for macOS machine:
- Neovim with lazyvim
- Fish shell + Fisher plugins manager
- Git configuration
- Brew base packages

## Installation

```bash
git clone --bare git@github.com:dstdfx/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

If there's any conflicts, move/backup the conflicting files and run the checkout command again.

Hide `.dotfiles` folder from git:
```bash
echo ".dotfiles" >> .gitignore
dotfiles add .gitignore && dotfiles commit -m "Add .dotfiles to .gitignore" && dotfiles push
```

Run setup script:
```bash
./install.sh
```

## Update
```bash 
dotfiles pull
nvim --headless "+Lazy sync" "+TSUpdateSync" +qa
```

## Notes
- Neovim lockfile (`lazy-lock.json`) is commited to ensure same plugins are installed across machines
- Fish shell is set as default shell in `install.sh`

