# ub-dev-playbook

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

- `sw`  : All the software ( `apt` + `deb` + `snap` + `pip` + `nvm` + `awscli`)
- `apt` : APT packages
- `deb` : Local deb packages
- `snap` : Snap packages
- `pip` : Pip dependecies
- `awscli` : AWS CLI -->
- `local` : Local settings -> alias + .bashrc
- `alias` : Add common alias

## Aplications

- [nvm](https://github.com/nvm-sh/nvm)
- [Franz](https://meetfranz.com/)
- [Vagrant](https://www.vagrantup.com/)
- [vscode](https://code.visualstudio.com/)
- [zoom](https://zoom.us/)
- [chrome](https://www.google.com/chrome/)
- [steam](https://store.steampowered.com/)
- [virtualbox](https://www.virtualbox.org/)
- [discord](https://discord.com/)
- [fast](https://snapcraft.io/fast)
- [postman](https://www.up9.com/)
- [slack](https://slack.com/)
- [spotify](https://www.spotify.com)
- [teams](https://www.microsoft.com/en-us/microsoft-teams/group-chat-software)
- [telegram-desktop](https://telegram.org/)
- [cacher](https://www.cacher.io/)
- [neovim](https://github.com/neovim/neovim)

## TODO

- ~~Set up nvidia persistance mode to avoid GPU crash  `/usr/bin/nvidia-smi -pm 1` [Deprecated]~~
- Install https://community.openvpn.net/openvpn/wiki/OpenVPN3Linux
- Fix nvm installation
- Set up /etc/hosts
- Check vscode sync  or install vscode settings extensions