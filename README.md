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

# Provisioning: Stuff to fix
[] node isn't installed (though nvm is)
[] locale / encoding issues need fixing

# Provisioning: Stuff to add
[] Custom background
[] Links / launcher for common apps (Code, Chrome, Terminal)
[] Install an IDE w/ project-specific settings included (Eclipse or IntelliJ)
[] Checkout project automatically (?)
[] Install necessary global NPM modules (@angular/cli, typings, etc)
[] Anything else necessary to jump right in and do a full build w/ local deploy
[] Setup Git name / email via Ansible
[] Install proper .m2 settings, including encrypted passwords (if possible)
[] Setup preconfigured SSH key if available (avoids need to recreate or manually setup after fresh provision)

# Vagrant: Stuff to add
[] Forward ports for app