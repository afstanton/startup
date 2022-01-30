# README

What is this?

I have a tendency to start projects, add the same things, forget to add some, go back and add them later, etc.

This is an attempt to build a shell of a thing that I (and maybe others) can use as a starting point for projects. Not quite a template, but close enough.

This is going to be highly opinionated. If you don't like it, don't use it. If I wind up adding things that too tightly constrain me later on, I'll strip them out.

# Relevant gems used

I'm not going to go into detail on every single gem I add here, but some should be called out.

This uses the [rename](https://github.com/morshedalam/rename) gem. You'll need to do "bundle exec rails g rename:into New-Name" to change it into whatever you like. I found it works pretty well, but you may want to double check it. When I tried renaming this app to something else and then back, I found that in config/database.yml it had changed 'ENV["STARTUP_DATABASE_PASSWORD"]' to 'ENV["startup_DATABASE_PASSWORD"]' - so YMMV. It's a good start, though.

The [license_finder](https://github.com/pivotal/LicenseFinder) gem is important because some corporate environments prohibit certain open source license, in particular those of the GPL family. Some licenses are simply necessary to accept - you can't build a Rails app if you reject them. I've accepted those ahead of time, and I'll accept others if necessary, but I plan on trying to avoid those from the GPL family so as to minimize issues. At present (2022-01-29), the released version of license_finder is incompatible with Ruby 3.1, so I have had to use a fork of it. Once the PR fixing it has been merged in, I plan to switch to that version.
