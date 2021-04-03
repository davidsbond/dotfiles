# dotfiles

Backup of my various dotfiles. To import files to the `$HOME` directory, use `make`

## How it works

The `export.sh` script will iterate over all directories in this repository. Each file in each directory is copied
into the $HOME directory with a concatenation of the directory and filename, prefixed with a `.`. For example:

```
git/config => $HOME/.gitconfig
``` 

## What's in here

- [cron](./cron) - Crontab configuration
- [git](./git) - Git CLI configuration, commit template and global ignore file
- [npm](./npm) - Global NPM CLI configuration
- [vue](./vue) - Global Vue CLI configuration
- [zsh](./zsh) - ZSH configuration and aliases
