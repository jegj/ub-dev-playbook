# ub-dev-playbook

[![CI](https://github.com/jegj/ub-dev-playbook/actions/workflows/ci.yml/badge.svg)](https://github.com/jegj/ub-dev-playbook/actions/workflows/ci.yml)

This playbook installs and configures my Ubuntu Dev Env

## Dev dependecies

```sh
sudo apt-get install yamllint
pip3 install ansible-lint
```

- [Issues wide dependecies](https://stackoverflow.com/questions/75608323/how-do-i-solve-error-externally-managed-environment-every-time-i-use-pip-3)

## Installation

1. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

2. Clone or download this repo

3. Install dependecies `ansible-galaxy install -r requirements.yml`

4. Run playbook

```sh
ansible-playbook main.yml --ask-become-pass --become-user=<ADMIN_ACCOUNT>
```

Supports check mode

```sh
ansible-playbook main.yml --ask-become-pass --become-user=<ADMIN_ACCOUNT> --check
```

## Default values

Check [config.default.yml](./config.default.yml)

## Override Default values

Create a config.yml file and setting the overrides in that file.
Follow [config.default.yml](./config.default.yml) for more information

## Tags

- `sw` : All the software below
- `apt` : APT packages
- `deb` : Local deb packages
- `snap` : Snap packages
- `pip` : Pip packages
- `awscli`: AWS CLI
- `local` : Local settings + git alias + vim/neovim settings
- `alias` : Add shell alias
- `admin` : Admin task like souders
- `neovim` : Neovim installation
- `nvm` : nvm installation
- `npm` : npm global packages installation
- `zsh`: zsh shell installation & configuration
- `tpm`: Tmux plugin manager installation

## Inspiration

[mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
[craftzdog](https://github.com/craftzdog/dotfiles-public/)
[Lazyvim Ide Configuration](https://github.com/jellydn/lazy-nvim-ide)

## Manual Settings

- [zsh](./files/zsh/README.md)

- [neovim](/files/nvim/README.md)

- [rust](https://www.rust-lang.org/tools/install)

- [go](https://go.dev/doc/install)

- [wezterm](/files/wezterm/wezterm.md)

- [httpie](/files/httpie/README.md)

## Lint

```sh
./lint.sh
```
