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