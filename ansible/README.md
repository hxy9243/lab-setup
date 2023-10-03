Ansible
----

This directory hosts Ansible-related configurations, playbooks, and notes.

# Get Started

## Install Ansible:

See https://docs.ansible.com/ansible/2.9/installation_guide/intro_installation.html#installing-ansible-on-ubuntu

```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install --yes ansible
```

## Setup Config

Copy the Ansible configuration to `~/.ansible.cfg`, which sets up the interpreter.

```bash
cp ansible.cfg.example ~/.ansible.cfg

# edit to update the configuration
```

Populate the hosts inventory to fit your cluster. Examples in "inventory".

See more at: https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html

# Using Playbooks

For example, execute the roles in k8s:

```bash
ansible-playbooks k8s.yaml
```

This will install kubernetes on nodes specified in the inventory, for k8s_leader
and k8s_worker nodes.

# Playbooks

Here's a list of top-level playbooks that applies the roles defined in the [roles](roles)
directory:

- [k8s.yaml](k8s.yaml): Install k8s server and clients.
- [nfs.yaml](nfs.yaml): Install and deply NFS server and clients.
- [k8s_deploys.yaml](k8s_deploys.yaml): Tools and services to deploy after
  the installation of kubernetes (e.g., with helm).