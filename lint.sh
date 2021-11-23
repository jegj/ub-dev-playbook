#!/bin/bash
set -e

yamllint .
ansible-playbook -i inventory main.yml --syntax-check
ansible-lint main.yml
