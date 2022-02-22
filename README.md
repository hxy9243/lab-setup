Lab Setup Scripts
====

These are my setup scripts for my home-lab environment. It's designed 
for a small cluster of VMs/baremetal nodes running k8s.

## Ansible Setup

To get Ansible, see more at:

- https://docs.ansible.com/ansible/latest/installation_guide/index.html
- https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

To configure Ansible (e.g. setting up hosts, config SSH and passwords), see:

- https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#intro-inventory
- https://docs.ansible.com/ansible/latest/installation_guide/intro_configuration.html


To use ansible playbook, run:

```
ansible-playbook k8s/main.yaml
```

This will attempt to install docker, pre-configure hosts for k8s, and install a k8s
cluster in the hosts described in `hosts` files.

# Contents

- [playbook/k8s](/playbook/k8s): Install docker, preconfigure hosts, and install k8s
  on all the hosts (including leader and followers).

- [misc](/playbooks/misc): Misc tasks like:

  - Update packages.
  - Install conda.
  - Clean docker.
  - etc.