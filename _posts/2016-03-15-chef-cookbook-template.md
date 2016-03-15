---
layout: post
title: Construction of a Chef cookbook template
comments: true
---

Firstly, sorry about the delay in blogging, I am aiming to blog at least once per week, but for multiple reasons this hasn't been possible.

One of the main reasons for this is due to working too many hours to hit deadlines and burning myself out.

However, I have been working on a few things I wanted to blog about.

### Chef cookbook template

Whilst working on this Continuous Delivery pipeline project I noticed the need for cookbook consistency.

Therefore, I went about constructing a "chef cookbook template" repository.

The idea is that all other developers can clone this repository and tweak it for their needs.

I have uploaded this to [GitHub](https://github.com/swade1987/chef-cookbook-template) 

Please check it out, all feedback is welcomed via [issues](https://github.com/swade1987/chef-cookbook-template/issues) or this blog post.

### Script to aid updating the chef server environment cookbook constraints 

The way our CD pipeline works is that it polls our NuGet repository for a new version of artefact X

Once it has a new version it updates the chef environment to set that artefacts cookbook version to be the version of the latest artefact.

I worked along with my colleague [James McKay](https://twitter.com/jammycakes) to come up with a powershell script to make this easier.

I have uploaded this to [GitHub](https://github.com/swade1987/update-chef-environment)

Please check it out, all feedback is welcomed via [issues](https://github.com/swade1987/update-chef-environment/issues) or this blog post.
