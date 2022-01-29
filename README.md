# README

What is this?

I have a tendency to start projects, add the same things, forget to add some, go back and add them later, etc.

This is an attempt to build a shell of a thing that I (and maybe others) can use as a starting point for projects. Not quite a template, but close enough.

This is going to be highly opinionated. If you don't like it, don't use it. If I wind up adding things that too tightly constrain me later on, I'll strip them out.

This uses the [rename](https://github.com/morshedalam/rename) gem. You'll need to do "bundle exec rails g rename:into New-Name" to change it into whatever you like. I found it works pretty well, but you may want to double check it. When I tried renaming this app to something else and then back, I found that in config/database.yml it had changed 'ENV["STARTUP_DATABASE_PASSWORD"]' to 'ENV["startup_DATABASE_PASSWORD"]' - so YMMV. It's a good start, though.
