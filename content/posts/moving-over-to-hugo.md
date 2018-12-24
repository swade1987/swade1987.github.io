---
title: "Moving Over to Hugo"
date: 2018-12-24T15:45:17Z
draft: true
featuredImg: ""
tags: 
  - tag
---

I recently went through the process of switching my blog’s static site generator from Jekyll to Hugo. Both are great tools, but as I’ve updated my website over time, I began to feel constrained by Jekyll — and wanted to switch to something more stable and robust.

# Context

I really like Jekyll. It’s fast to setup, comes with an extremely expressive templating language (sometimes dangerously so), and has the full support of Github — all of which lowers the barrier to deploying and maintaining a personal site.

That being said, Jekyll’s generation times start to skyrocket when you develop a site with meaningful complexity. I frequently had site generation times of 7+ seconds, which made working on formatting fixes on my website a complete slog.

Additionally, I’m not the biggest fan of the Ruby ecosystem — mostly due to the trouble I seem to have when installing dependencies. I’ve learned to accept Python’s dependency management warts — they’re generally ameliorated by sticking with a single tool and using it as intended. Ruby… I’ve never gotten to behave well. Without fail, I run into some byzantine installation bug with Nokogiri or Bundler when setting up a completely clean environment. I inevitably fall down some rabbit-hole of desperate StackOverflow questions, costing me an afternoon of annoyance.

# Jekyll’s Moat

Despite this, I stuck with Jekyll for several years.

After using Netlify for a bit, the “moat” that Github Pages’ blessed support afforded Jekyll fell away. It’s just as easy to deploy a Hugo-, Gatsby-, or Pelican-generated site on Netlify as it is a Jekyll-generated one (and with HTTPS, no less!).

In fact, the experience of deploying using Netlify is (in my opinion) superior to Github Pages because you can actually see deploy logs and build failure messages instead of getting a generic email from Github saying “Something went wrong”.

# Why Hugo?

Just as much as I wanted to switch away from Jekyll, I was intrigued in switching to Hugo.

**Hugo is Fast** My biggest complaint with Jekyll was the page generation times. Hugo boasts that it can have sub-millisecond page generation times — I’ve found that to be a slightly over-optimistic. However, my site’s total generation time dropped from 7+ seconds to ~300ms, so I’d score that as a win.

**Hugo is written in Go** This is a pretty superficial reason to change SSGs, but… I like Go. It’s a verbose language, but that makes projects written in it easy to read. Its templating system is really good, and Hugo makes smart additions to get similar expressiveness to Liquid (Jekyll’s templating system) with notable performance improvements.

**Hugo is a Single Binary** The installation and dependency management process for maintaining a Hugo site is trivial compared to Jekyll — you just have to download the single hugo binary. That’s it. No messing with package installers or system libraries (cough Nokogiri’s love-hate relationship with lxml cough).


# Conclusion

Ultimately, this can be read as just another “Why I moved from $X to $Y” post. I’ve given Hugo a spin and I like it so far. It’s fast, expressive where it should be, and conservative where it needs to be.

I try, as a rule, to not switch tech stacks on a whim. I’ve convinced myself that there are significant benefits in changing to Hugo, and so I’m hopeful that I’ll stick with this new setup for the next several years.