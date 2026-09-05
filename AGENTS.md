# AGENTS.md

Personal macOS dotfiles, managed with GNU Stow. `~/.config` and `~/.zshrc` are symlinks into this repo, so **this repo IS the machine's live config**: any edit under `.config/` takes effect immediately in the running app. No build, test, lint, or CI exists. Commits go straight to `main` (no PRs, no branching) with short lowercase messages.

## Working here

- There is no deploy/relink step for files inside `.config/` — they're already live via the `~/.config -> dotfiles/.config` symlink. A brand-new top-level file at the repo root (e.g. `~/.gitconfig`) would need `cd ~/dotfiles && stow --target=$HOME .`; new files *inside* `.config/` do not.
- `.config/` intentionally tracks nearly everything apps write there, including vendored third-party plugin trees: 1000+ tracked files under `.config/tmux/plugins/` (tpm + catppuccin, etc.), raycast `node_modules`, and an 11 MB `starry-night.jpg` wallpaper at the repo root. Don't "clean up" or prune anything — it's deliberate.
- `.DS_Store` is excluded by global `~/.gitignore_global` and `.stow-local-ignore`; don't add repo-local gitignore rules without reason.
- Several subdirs contain local junk that is normally ignored/untracked (`.config/opencode/node_modules/`, nvim `doc/tags`). Stage files explicitly and never `git add -A` blindly.
- Secrets are tracked: `.config/github-copilot/auth.db*` holds real Copilot credentials. Never print, diff, or paste their contents.
- `.p10k.zsh` (Powerlevel10k theme, from `p10k configure`) is tracked at the repo root and stow-linked as `~/.p10k.zsh` — mention it if you touch prompt code in `.zshrc`.
- `.zshrc` expects Homebrew installs (`/opt/homebrew`): oh-my-zsh, powerlevel10k, zsh-vi-mode, fzf, zoxide, pyenv.

## nvim: one active config, three backups

nvim loads only `~/.config/nvim` (LazyVim: `init.lua` bootstraps lazy.nvim and requires `config.lazy`; plugins live in `lua/plugins/`, plugin versions pinned in `lazy-lock.json`). The sibling dirs `.config/nvim-my/`, `.config/nvim-kickstart/`, and `.config/nvim-lazy-old/` are alternate/archived configs kept for reference (history flip-flops between them; latest commit is "switch back to lazyvim"). Edit only `.config/nvim` unless the user says otherwise.

## Sanity checks (no test runner exists)

- After `.zshrc` edits: `zsh -n ~/.zshrc`
- After nvim edits: `nvim --headless "+qa"` (surfaces lazy.nvim/plugin load errors)
- WezTerm config is Lua: `wezterm ls-fonts` is overkill — a `nvim --headless`-style syntax check is `luac -p .config/wezterm/*.lua`
