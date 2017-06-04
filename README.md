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

# Notes
I don't like the default zsh nonsense.  Either ditch it or use oh-my-zsh instead
Either way, need to set proper LANG setting in .zshrc
    export LANG=en_US.UTF-8
If doing a different zsh, need to re-add motd thing at bottom of file
    cat /etc/motd
