# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Ansible-based automation playbook for setting up an Ubuntu development environment. Installs and configures development tools, applications, shells, editors, and system settings.

## Commands

### Linting

```sh
./lint.sh
```

Runs yamllint, ansible-playbook syntax check, and ansible-lint.

### Run Playbook

```sh
ansible-playbook main.yml --ask-become-pass --become-user=<ADMIN_ACCOUNT>
```

### Dry Run (Check Mode)

```sh
ansible-playbook main.yml --ask-become-pass --become-user=<ADMIN_ACCOUNT> --check
```

### Install Dependencies

```sh
ansible-galaxy install -r requirements.yml
```

### Run Specific Tags

```sh
ansible-playbook main.yml --ask-become-pass --become-user=<ADMIN_ACCOUNT> --tags "apt,neovim"
```

## Architecture

### Entry Point

- `main.yml` - Main playbook that imports all task files with tag-based execution

### Configuration

- `config.default.yml` - Default configuration (package lists, versions, aliases, URLs)
- `config.yml` - User overrides (git-ignored, copy from config.default.yml)

### Task Modules (tasks/)

Each task file handles a specific component:

- `apt_pkgs.yml` - APT packages, keys, and repositories
- `deb_local_pkgs.yml` - Downloaded .deb packages
- `snap_pkgs.yml` - Snap packages
- `pip_pkgs.yml` - Python pip packages
- `neovim.yml` - Neovim installation from release tarball
- `nvm.yml` - Node Version Manager setup
- `npm.yml` - Global npm packages
- `zsh.yml` - ZSH and oh-my-zsh
- `local_settings.yml` - Dotfiles (vim, tmux, git, ssh, scripts)
- `alias.yml` - Shell aliases
- `tpm.yml` - Tmux Plugin Manager
- `admin.yml` - Sudoers configuration
- `awscli.yml` - AWS CLI
- `git_clone_repo.yml` - Clone external repos
- `claude.yml` - Claude Code settings (CLAUDE.md, settings.json)

### Configuration Files (files/)

Dotfiles and configs copied to user home:

- `nvim/` - Neovim/LazyVim configuration
- `zsh/` - .zshrc
- `tmux/` - .tmux.conf
- `vim/` - .vimrc
- `git/` - .gitconfig
- `ssh/` - SSH config
- `.local/` - Custom scripts (tmux-sessionizer, better-branch)
- `wezterm/` - Terminal emulator config
- `claude/` - Claude Code config (CLAUDE.md, settings.json)

### Tags

- `sw` - All software
- `apt`, `deb`, `snap`, `pip` - Package managers
- `neovim`, `nvm`, `npm`, `zsh`, `tpm` - Specific tools
- `local`, `alias`, `admin`, `claude` - Configuration
- `git_clone_repo` - Repository cloning

## Conventions

- Uses `ansible.builtin` module namespacing
- Configuration variables defined in `config.default.yml` with user overrides in `config.yml`
- Package lists use YAML arrays (apt_pkgs, snap_pkgs, pip_pkgs, npm_glob_pkgs)
- Deb packages include name and URL pairs
- Bash aliases defined as alias/command pairs
- When a new ansible tag/task is added, also update the readme to reference the new tag
