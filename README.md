# 🚀 Dotfiles

Dotfiles for streamlined development: shell configs, editor settings, system tweaks, and handy scripts.

## Installation

### Clone repository

```shell
git clone --bare <git@github.com>:julienandreu/dotfiles.git .cfg
```

### Add config alias

```shell
echo "\nalias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ".$(ps -p $$ -o 'comm=')rc"
```

Then you can use your classic command with the `config` main command such as `config fetch`, `config pull`, `config add ~/path/to/new-config`, `config commit ...` and `config push`
