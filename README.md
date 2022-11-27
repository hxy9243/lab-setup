Lab Setup Scripts
====

These are my setup scripts for my baremetal home-lab or cloud-based lab environment. It's designed
for a small cluster of VMs/baremetal nodes running kubernetes.

## Ansible Setup

To get Ansible, see more at:

- <https://docs.ansible.com/ansible/latest/installation_guide/index.html>
- <https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html>

To configure Ansible (e.g. setting up hosts, config SSH and passwords), see:

- <https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#intro-inventory>
- <https://docs.ansible.com/ansible/latest/installation_guide/intro_configuration.html>

The project added example inventory [hosts files](ansible/inventory/hosts.example) and
[config file](ansible/ansible.cfg.example). Inventory files should be copied to `~/.ansible/hosts`
and config file to `~/.ansible`, e.g.:

```
cp ansible/inventory/hosts.example ~/.ansible/hosts
# edit the hosts example

cp ansible/ansible.cfg.example ~/.ansible.cfg
# edit the config example
```

## Ansible Notebook

To use ansible playbook, run:

```
ansible-playbook k8s/main.yaml
```

This will attempt to install docker, pre-configure hosts for k8s, and install a k8s
cluster in the hosts described in `hosts` files. Configurations are in
[ansible/roles/k8s/vars/main.yaml](ansible/roles/k8s/vars/main.yaml).

# Contents

- [vagrant](vagrant/) Example for setting up a small cluster with Vagrant.
◊
- [ansible](ansible/): Ansible files for configuring systems, including roles from:

  - [ansible/roles/docker](ansible/roles/docker): Installing docker.
  - [ansible/roles/k8s](ansible/roles/k8s): Installing baremetal k8s.
  - [ansible/roles/misc](ansible/roles/misc/): Misc tasks like:
    - Update packages.
    - Install conda.
    - Clean docker.
    - etc.

- [kubernetes](kubernetes): Kubernetes helm and config files to install Pods/Services
  in existing kubernetes cluster, including:

  - [kubernetes/jupyter](kubernetes/jupyter): Installing Jupyter lab.
  - [kubernetes/ray](kubernetes/jupyter): Installing Ray.
