---
layout: post
title: Rebuilding my MacBook Pro
comments: true
---

Firstly, sorry about the delay in blogging, I am aiming to blog at least once per week, but for multiple reasons this hasn't been possible.

One of the main reasons for this is that I managed to screw my MacBook Pro up pretty spectacularly last week.

That is what you get for typing random commands into the terminal and hitting Enter without thinking about things.

Any how, I thought I would blog about my new setup.

### HASHICORP - THAT IS ALL

As you can probably all tell by now I am a huge HashiCorp fan ... #hashicult

Therefore the first tools I downloaded and installed were Packer, Terraform & Vagrant.

I downloaded them all to a folder called "~/hashicorp" and then went about setting my PATH to allow these to work (see below)

~~~~~~~~
# Changes to my ~/.bash_profile file
export PATH="~/hashicorp/terraform:~/hashicorp/packer:$PATH"
~~~~~~~~

### The joys of the Chef Development Kit

Due to using Chef for my Continuous Delivery Pipeline I needed to download and install the ChefDK.

I made the following adjustment to my ~/.bash_profile file.

~~~~~~~~
# Further changes to my ~/.bash_profile file
export PATH="/opt/chefdk/embedded/bin:${HOME}/.chefdk/gem/ruby/2.1.0/bin:$PATH"
~~~~~~~~

I executed "knife -verify" and everything looked rosey.

However the problem came when I needed to use Vagrant Berkshelf when testing my Chef cookbooks.

The damn thing just wouldn't work properly.

Then I stumbled across the fact I needed to add the following addition to my ~/.bash_profile file.

~~~~~~~~
# Further changes required for Vagrant Berkshelf
export PATH="/opt/chefdk/bin:${HOME}/.chefdk/gem/ruby/2.1.0/bin:$PATH"
~~~~~~~~

