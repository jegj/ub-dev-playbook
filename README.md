# ub-dev-playbook

[![CI](https://github.com/jegj/ub-dev-playbook/actions/workflows/ci.yml/badge.svg)](https://github.com/jegj/ub-dev-playbook/actions/workflows/ci.yml)

This playbook installs and configures my Ubuntu Dev Env

## Installation

1) [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

2) Clone or download this repo

3) Install dependecies ```ansible-galaxy install -r requirements.yml```

4) Run playbook

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

- `sw`    : All the software ( `apt` + `deb` + `snap` +
`pip` + `awscli` + `neovim` + `nvm`)
- `apt`   : APT packages
- `deb`   : Local deb packages
- `snap`  : Snap packages
- `pip`   : Pip packages
- `awscli`: AWS CLI
- `local` : Local settings + git alias + vim/neovim settings
- `alias` : Add shell alias
- `admin` : Admin task like souders
- `neovim` : Neovim installation
- `nvm` : nvm installation
- `npm` : npm global packages installation

## Inspiration

[mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)

## Manual Settings

- [zsh](./files/zsh/README.md)

- [neovim](/files/nvim/README.md)

- [rust](https://www.rust-lang.org/tools/install)
