# dotfiles

My macOS dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/). Every top-level file/dir in this repo (`.zshrc`, `.config/`, `.p10k.zsh`, …) is symlinked into `$HOME`, so the repo is the live config — edits apply immediately.

## Setup on a new machine

```sh
brew install stow
git clone <this repo> ~/dotfiles
cd ~/dotfiles
stow --target=$HOME .
```

This creates symlinks like `~/.zshrc -> dotfiles/.zshrc` and `~/.config -> dotfiles/.config`. `~/.DS_Store` is skipped via `.stow-local-ignore`.

## Updating

Configs are symlinks, so editing files in the repo takes effect immediately — no re-stow needed. Re-run `stow --target=$HOME .` only when you add a brand-new top-level file/dir to the repo.
