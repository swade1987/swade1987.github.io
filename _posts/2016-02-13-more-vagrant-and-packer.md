---
layout: post
title: Interesting lesson learnt about Vagrant
---

So as you are all aware I have been working on making sure that every cookbook I create has an associated Vagrant file.

I thought I would let you into a litle secret which took me basically half a day to notice.

### Setting the scene.

I was working on a cookbook for the installation of a Bamboo server.

I already had the bash script working locally so I knew the contents of the cookbook was valid.

However, when I browsed to http://localhost:8085 (note that 8085 is the default port for Bamboo server) nothing was displaying.

I was running "vagrant provision", "vagrant destroy" and "vagrant up" with slight tweaks to the cookbook with no results.

### So what was the problem?

The problem was ... wait for it ... the VM didn't have enough memory!

So soon as I added the following to the vagrant file everything work.

~~~~~~~~
  # Increase the memory
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
~~~~~~~~
 
### What is next?

In the coming days I want to turn the bash script into a Docker container for easier use, watch the space ...