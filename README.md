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
## Override Default values

Create a config.yml file and setting the overrides in that file. Follow [config.default.yml](./config.default.yml) for more information

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