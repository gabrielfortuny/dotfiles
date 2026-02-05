# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/). Currently supports macOS.

## Bootstrap a new machine

First, install Xcode Command Line Tools (required for Homebrew):

```sh
xcode-select --install
```

Then initialize chezmoi:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --purge-binary gabrielfortuny
```

This will:

- Install chezmoi
- Clone this repository
- Install Homebrew and packages from [`home/.chezmoidata/packages.yaml`](home/.chezmoidata/packages.yaml)
- Install VS Code extensions from [`home/.chezmoidata/vscode.yaml`](home/.chezmoidata/vscode.yaml)
- Configure Git with SSH commit signing via [1Password](https://developer.1password.com/docs/ssh/)
- Configure SSH to use 1Password agent

## Reference

- [chezmoi daily operations](https://www.chezmoi.io/user-guide/daily-operations/)
- [chezmoi command reference](https://www.chezmoi.io/reference/commands/)
