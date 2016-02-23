---
layout: post
title: My adventure with Packer
comments: true
---

So in a previous contract I had already used [Packer](https://www.packer.io/) to create AMIs and Virtualbox images so I thought it would be a breeze this time.

One word ... mistake!

### First lesson learnt (backups).

The first lesson learnt was that I should of checked into Github the work I had done previously it would of made life much easier.

Addtionally, keeping a backup of the lessons learnt, I just couldn't find them anywhere, Evernote you failed me this time!

### Second lesson learnt (WinRM timeouts).

So, you are probably thinking to yourself, so Steve what was the problem you faced.

Well it was actually two things, one being the timeout and another being the default username and password being used.

Initially I had the winrm timeout in Packer to be 60 minutes and then thought to myself this is too long to wait for failure!

~~~~~~~~
# WinRM configuration in Packer file
"communicator":    "winrm",
"winrm_username":  "{{user `winrm_username`}}",
"winrm_password":  "{{user `winrm_password`}}",
"winrm_port":      5985,
"winrm_timeout":   "60m"
~~~~~~~~

I then went the other way and changed this to a minute, the result, WinRM timed out.

Then, I tried 5 minutes, 6 minutes, 10 minutes, all had the same result, WinRM timed out.

I then spoke to a "virtual friend" of mine [Matt Fellows](https://twitter.com/matthewfellows) from good old Australia, he suggested setting the timeout to 20 minutes.

The result, after 20 minutes WinRM timed out again.

However, I thought to myself at this point that something else must be wrong, and I was correct. 

### Third lesson learnt (WinRM default username and password)

As you can see from the code snippet above I was passing the winrm username and password into Packer as variables.

The award for the biggest school boy error comes now ... I had set the winrm username to "Administrator".

The problem being that "Administrator" is the default username for the Windows AMI in AWS.

Road of applause for Steven taking nearly 30 minutes to work this mistake out!

I subsequently changed the winrm username and password to be something other than "Administrator" and guess what, things started working!

### Lessons learnt here.

The number one lesson I learnt during this little "trial" was to never give up, we all have to go through trials to learn more.

The second has to be the value of the community around Open Source technologies and software, shout outs to [Gitter](https://gitter.im/)

The third is to change one variable in your Packer file at a time, it really helps to make diagnosis quicker, well if you deem 30 minutes quick!

### What is next

The first thing I will be doing is checking what I have done into my personal Github account so I don't "forget" again.

The second is being blogging my "trials" as I really think its useful to give back to the community that give so much to me.

Until next time, keep learning ...