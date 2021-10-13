# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :alpha do |alpha|
    alpha.vm.box = "ubuntu/focal64"
    alpha.vm.network :private_network, ip: "10.0.0.10"
    alpha.vm.hostname = "vmsite1"
    alpha.vm.provision :shell, path: "bootstrap.sh"
  end

  config.vm.define :beta do |beta|
    beta.vm.box = "ubuntu/focal64"
    beta.vm.network :private_network, ip: "10.0.0.11"
    beta.vm.hostname = "vmsite2"
    beta.vm.provision :shell, path: "bootstrap.sh"
  end
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end
end
