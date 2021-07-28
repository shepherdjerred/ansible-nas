#!/bin/bash
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i production/inventory.yml -e@vars/vaulted_vars.yml --vault-password-file vault_password_file "$@"

