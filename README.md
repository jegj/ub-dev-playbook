# ub-dev-playbook

[![CI](https://github.com/jegj/ub-dev-playbook/actions/workflows/ci.yml/badge.svg)](https://github.com/jegj/ub-dev-playbook/actions/workflows/ci.yml)

This playbook installs and configures my Ubuntu Dev Env

## Installation

1) [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

2) Clone or download this repo

3) Install dependecies
```
ansible-galaxy install -r requirements.yml
```

4) Run playbook
```sh
ansible-playbook main.yml --ask-become-pass --become-user=<ADMIN_ACCOUNT>
#ansible-playbook main.yml --ask-become-pass --become-user=jegj
```

## Default values

Check [config.default.yml](./config.default.yml)

## Override Default values

Create a config.yml file and setting the overrides in that file. Follow [config.default.yml](./config.default.yml) for more information

## Tags

- `sw`    : All the software ( `apt` + `deb` + `snap` + `pip` + `awscli`)
- `apt`   : APT packages
- `deb`   : Local deb packages
- `snap`  : Snap packages
- `pip`   : Pip packages
- `awscli`: AWS CLI
- `local` : Local settings + git alias + vim/neovim settings
- `alias` : Add common alias
- `admin` : Admin task like souders

## Inspiration

https://github.com/geerlingguy/mac-dev-playbook

## TODO

- ~~Set up nvidia persistance mode to avoid GPU crash  `/usr/bin/nvidia-smi -pm 1` [Deprecated]~~
- Install https://community.openvpn.net/openvpn/wiki/OpenVPN3Linux
- Fix nvm installation
- Check vscode sync  or install vscode settings extensions
- ~~Add account to `sudo` group and souders~~