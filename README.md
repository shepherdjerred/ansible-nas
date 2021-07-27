# Ansible Playbook
[![License](https://img.shields.io/github/license/shepherdjerred/ansible-playbook)](https://github.com/shepherdjerred/ansible-playbook/LICENSE)
[![Build Status](https://img.shields.io/github/workflow/status/shepherdjerred/ansible-playbook/ansible-lint)](https://github.com/shepherdjerred/ansible-playbook/actions)

A giant Ansible playbook for managing my servers and personal devices.

## Setup
`ansible-galaxy install -r requirements.yml`

## Caveats
* UFW could potentially leave firewall in bad state. Might want to disable firewall before running UFW commands
* Most of these tasks should be more configurable/robust, but since this is for personal use I don't care too much

## Execution
This playbook will bootstrap new hosts into the specified state. It should take minimal manual work. Since the playbook supports multiple different target hosts and configurations, the bootstrap process will look slightly different from host to host.

The playbook uses two variables to bootstrap new hosts -- `bootstrap_user` and `target_user`. `bootstrap_user` is the user that is used to log in to a fresh installation of the system. For example, AWS EC2 instances will usually (depending on the AMI) use the value `ec2-user`. `target_user` is the desired day-to-day user that most work will be done on. Ideally the `bootstrap_user` will only be used to set up the `target_user`. It would be nice if this user could be deleted after the first run of the playbook.

For Debian based hosts the application should take care of all work from setting up the root and target user to installing all the desired applications.
