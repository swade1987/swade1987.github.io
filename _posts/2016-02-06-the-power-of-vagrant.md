---
layout: post
title: The power of Vagrant
---

So I have been trying to get some cookbooks working from [Chef Supermarket](https://supermarket.chef.io/).

I was provisioning nodes in my terraform configuration and they just weren't playing ball.

Then I thought to myself, why don't I just use [Vagrant](https://www.vagrantup.com/) locally to test them out.

### Installation.

The installation of Vagrant was pretty straightforward I simply followed the steps [here](https://www.vagrantup.com/docs/installation/).

Additionally I had to install Virtual Box.

### Writing my first Vagrantfile.

The first vagrantfile I created was for the [Bamboo cookbook](https://supermarket.chef.io/cookbooks/bamboo/versions/1.6.0).

So from my iTerm window I browsed to the location of my cookbook and typed the following commands.

~~~~~~~~
  $ vagrant init
~~~~~~~~
 
 This created a vagrantfile at that directory which I then editted to the below.
 
~~~~~~~~

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "10.3.3.3"

  config.ssh.forward_agent = true

  #Berkshelf setup
  config.berkshelf.berksfile_path = "cookbooks/bamboo/Berksfile"
  config.berkshelf.enabled = true

  # Forward ports for Bamboo
  config.vm.network "forwarded_port", guest: 8085, host: 8085, auto_correct: true

  # Update and install the chef dk
  config.vm.provision :shell, :inline => "sudo apt-get update -y"
  config.vm.provision :shell, :inline => "sudo apt-get install curl -y"
  config.vm.provision :shell, :inline => "curl -L https://www.opscode.com/chef/install.sh | sudo bash"

  # Execute the cookbook
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe 'bamboo::default'
  end
end

~~~~~~~~

In order to all the berkshelf file to be included we need to install the [Vagrant Berkshelf](https://github.com/berkshelf/vagrant-berkshelf) plugin.

~~~~~~~~

$ vagrant plugin install vagrant-berkshelf

~~~~~~~~

After editing and saving the vagrant I simply run "vagrant up". This constructed me a Ubuntu Trusty 14.04 image in my local virtualbox and ran
the default bamboo cookbook.

The chef run was successfully, however I was unable to see anything when browsing http://10.3.3.3:8085

Watch this space, I will get this one fixed in due course ...