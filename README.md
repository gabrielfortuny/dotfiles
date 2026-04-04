# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/). Currently supports macOS.

## Bootstrap a new machine

First, install Xcode Command Line Tools (required for chezmoi):

```sh
xcode-select --install
```

Then initialize chezmoi:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --purge-binary gabrielfortuny
```

This will:

- Prompt for a hostname (e.g. `my-macbook-pro`)
- Install [Homebrew](https://brew.sh/)
- Configure Git with SSH commit signing via [1Password](https://developer.1password.com/docs/ssh/)
- Configure SSH to use 1Password agent
- Apply macOS system [preferences](home/.chezmoiscripts/darwin/run_onchange_00-macos-settings.sh.tmpl)
- Install Homebrew packages from [`home/.chezmoidata/packages.yaml`](home/.chezmoidata/packages.yaml)
- Install VS Code extensions from [`home/.chezmoidata/vscode.yaml`](home/.chezmoidata/vscode.yaml)

## Quick reference

```sh
chezmoi add ~/.config/foo      # copy a file from home directory → working copy
chezmoi edit ~/.config/foo     # edit a file in the working copy
chezmoi edit --apply           # edit working copy and sync to home directory on quit
chezmoi diff                   # preview working copy → home directory diff
chezmoi apply                  # sync working copy → home directory
chezmoi cd                     # cd into working copy to commit/push to remote repo
chezmoi update                 # pull remote repo → local repo and sync to home directory
```

## Reference

- [chezmoi daily operations](https://www.chezmoi.io/user-guide/daily-operations/)
- [chezmoi command reference](https://www.chezmoi.io/reference/commands/)
