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

# Provisioning: Project-specific stuff to add
[ ] Install an IDE w/ project-specific settings included (Eclipse or IntelliJ)

[ ] Install necessary global NPM modules (@angular/cli, etc)

[ ] Install .m2 settings template


# Provisioning: User-specific stuff to add (configuration-driven)
[ ] Setup Git name / email, if configured (shouldn't be checked-in)

[ ] Encrypted passwords installed in .m2 settings file (definitely shouldn't be checked in)

[ ] Install SSH key pair (avoids need to reinstall public SSH key each time VM is rebuilt) (definitely shouldn't be checked in)


# Vagrant: Stuff to add
[ ] Forward ports for app
