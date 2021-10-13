# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :site1vm do |site1vm|
    site1vm.vm.box = "ubuntu/focal64"
    site1vm.vm.network :private_network, ip: "10.0.0.10"
    site1vm.vm.hostname = "site1vm"
    site1vm.vm.provision :shell, path: "bootstrap.sh"
  end

  config.vm.define :site2vm do |site2vm|
    site2vm.vm.box = "ubuntu/focal64"
    site2vm.vm.network :private_network, ip: "10.0.0.11"
    site2vm.vm.hostname = "site2vm"
    site2vm.vm.provision :shell, path: "bootstrap.sh"
  end
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end
end
