# dotfiles

This repository contains my personal dotfiles, managed with [chezmoi](https://www.chezmoi.io/).

See <https://www.chezmoi.io/user-guide/daily-operations/> for common usage instructions.

Currently supports macOS.

## Bootstrap a new machine

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply gabrielfortuny
```

- Sets up Homebrew and installs packages listed in [`.chezmoidata/packages.yaml`](.chezmoidata/packages.yaml).
- Configures Git.
- Configures SSH with [1Password](https://developer.1password.com/docs/ssh/).
