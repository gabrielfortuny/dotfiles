# dotfiles

This repository contains my personal dotfiles, managed with [chezmoi](https://www.chezmoi.io/).

See <https://www.chezmoi.io/user-guide/daily-operations/> for common usage instructions.

Currently supports macOS.

## Bootstrap a new machine

```sh
xcode-select --install
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply gabrielfortuny
```

This will:

- Install Xcode Command Line Tools (required for Homebrew)
- Install chezmoi
- Clone this repository
- Apply all dotfiles and run setup scripts
- Install Homebrew and packages listed in [`home/.chezmoidata/packages.yaml`](home/.chezmoidata/packages.yaml)
- Configure Git
- Configure SSH using [1Password](https://developer.1password.com/docs/ssh/)
