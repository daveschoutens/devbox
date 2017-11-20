# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  config.vm.box = "devbox"

  config.vm.hostname = "devbox"

  config.vm.provider "virtualbox" do |vb|
    # Name of our VM
    vb.name = "DevBox-New"
    # Configure the basics
    vb.cpus = 2
    vb.memory = 2048
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Configure other GUI-related nonsense
    vb.customize ["modifyvm", :id, "--vram", "256"]
    vb.customize ["setextradata", "global", "GUI/MaxGuestResolution", "any"]
    vb.customize ["setextradata", :id, "CustomVideoMode1", "1024x768x32"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--rtcuseutc", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    # NOTE: Try setting the following to "off" if running into problems with Chrome rendering
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
  end

  config.vm.network "private_network", ip: "10.10.20.10"
  config.vm.synced_folder '.', '/vagrant'
  config.ssh.forward_agent = true
  # config.ssh.insert_key = true

  # TODO: Put this in Packer's court. Remove all stdin is not a tty errors
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end

  # PROVISION START
  # config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"
  # config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
  # config.vm.provision "file", source: "~/.gitconfig", destination: "~/.gitconfig"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible/site.yml"
    # ansible.host_key_checking = false
  end
  # PROVISION END

end
