#!/bin/bash
ansible-playbook main.yml -i production/inventory.yml -e@vars/vaulted_vars.yml "$@"
