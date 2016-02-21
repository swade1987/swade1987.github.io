---
layout: post
title: Setting up repeatable build agents
comments: true
---

So over the last week or so I have been creating a number of different Chef cookbooks for a multitude of different things.

I am now looking at creating a build agent (we have been asked to use Bamboo) to allow for the Continuous Integration of our cookbooks.

### Secrets Management

I have created a "bamboo agent cookbook" which will be executed on a vanilla Windows Server 2012 R2 instance.

However, the biggest question is "secrets management" as ideally I don't want my secrets to access our Chef server in source control.

I have been looking at using [Hashicorp Vault](https://www.vaultproject.io/) to store our secrets so will update this post further with my progress.