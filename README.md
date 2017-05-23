# DevBox

The beginnings of a Packer / Vagrant / Ansible project to stamp out Development VMs.

Seeded by the clean and concise traintracks/devbox project.  Kudos!

```
$ cd packer
$ packer build devbox.json
$ cd ..
$ vagrant box add devbox packer/builds/devbox.box
$ vagrant up
```
