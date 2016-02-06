---
layout: post
title: Flirting with Terraform
---

So for those of you who have read my "about" page you are probably already aware I am working on a CD pipeline for PDS.

This week I have been working with Terraform to construct the underlying infrastructure of our environments on AWS.

Currently we have the following environments.

* Chef

* Core Services

* CI, SysTest & UAT 

### Chef

This environment simply consists of our Chef server which will be used to provision all nodes in all other environments.

Below displays the terraform configuration for construct the chef server.

~~~~~~~~

resource "aws_instance" "chef" {
  instance_type          = "m3.large"
  ami                    = "${lookup(var.aws_amis, var.aws_region)}"
  key_name               = "${var.key_name}"
  subnet_id              = "${module.base.default_subnet_id}"
  vpc_security_group_ids = ["${module.base.default_security_group_id}", "${module.base.external_connections_security_group_id}"]

  tags {
      Name = "chef"
  }

  user_data = "${file(\"chef-userdata.yml\")}"
}

~~~~~~~~

### Core Services


### CI, SysTest & UAT


