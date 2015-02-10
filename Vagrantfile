#!/usr/bin/env ruby
#^syntax detection

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.33.15"
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["./"]
    chef.add_recipe "requirements"
  end
end
