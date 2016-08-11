---
layout: post
title: From .NET to Docker <br>My journey with the Parliamentary Digital Service
comments: true
---

So after 16 months working with the Parliamentary Digital Service we have finally parted ways.
The following blog post will detail some of the work I did their and what they are trying to achieve.

### Who are the Parliamentary Digital Service?

The Parliamentary Digital Service (PDS), are a joint department of both Houses of Parliament, providing technology and intranet services to Members and their staff.
They currently blog at [https://pds.blog.parliament.uk/](https://pds.blog.parliament.uk/)

### Lords Amendment System

Initial I was bought back to work on a greenfield project entitled LAS (Lords Amendment System)

The aim of the project was to provide a system which allowed Members and their staff to table Amendments to Bills digitally.

These amendments will then be made available to the public to view from [http://lordsamendments.parliament.uk/](http://lordsamendments.parliament.uk/)

The solution was construction using ASP.NET MVC5, AngularJS & MSMQ to name a few.

### Continuous Delivery Pipeline

After numerous meetings with the Head of Development ([Dan Barrett](https://twitter.com/dasbarrett)) and the Director of Digital Development ([Emma Allen](https://twitter.com/_allenemma))
a team was formed to create a CD pipeline which would be used for the Alpha release of the new website.

We were given a lot of free reign here, the only decision which was made for us was that the website would be hosted on AWS.

I managed to convince the team that all our infrastructure setup would be configured using code. I pitched that we use [Terraform](https://www.terraform.io/) and they seemed
to be behind the idea, well that was easy!