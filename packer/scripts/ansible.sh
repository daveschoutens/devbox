#!/usr/bin/env bash
set -u
set -e
set -x

# Install pip.
apt -y install libffi-dev python-setuptools python-dev
easy_install pip

# Install Ansible repository.
apt -y update
apt -y install software-properties-common
apt-add-repository ppa:ansible/ansible

# Install Ansible.
apt -y update
apt -y install ansible

# Setup provisioning directory for packer-ansible-local
mkdir -p /packer/provisioner-ansible-local
chmod -R 777 /packer
