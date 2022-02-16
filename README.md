# README

What is this?

I have a tendency to start projects, add the same things, forget to add some, go back and add them later, etc.

This is an attempt to build a shell of a thing that I (and maybe others) can use as a starting point for projects. Not quite a template, but close enough.

This is going to be highly opinionated. If you don't like it, don't use it. If I wind up adding things that too tightly constrain me later on, I'll strip them out.

What this is not.

This isn't an app generator, nor is it a template to run "rails new" against. Maybe I'll build one of those someday, but for the time being you just clone this, rename it, and hit the ground running.

Why so many code quality gems?

I'm building this as a solo dev. I don't have anyone to do real code reviews on this, so I need things to call out the most common, most basic mistakes that get made. I tend to hack together whatever works first and move on, and these help me write better code. Plus, I just like them.

I plan on getting this set up such that `docker compose up` will spin up the app with all dependencies, but I'm not great at devops so that will take some time.

I also plan on getting this set up to use GitHub Actions, but again, that will take some time.

# Relevant gems used

I'm not going to go into detail on every single gem I add here, but some should be called out.

This uses the [rename](https://github.com/morshedalam/rename) gem. You'll need to do "bundle exec rails g rename:into New-Name" to change it into whatever you like. I found it works pretty well, but you may want to double check it. When I tried renaming this app to something else and then back, I found that in config/database.yml it had changed 'ENV["STARTUP_DATABASE_PASSWORD"]' to 'ENV["startup_DATABASE_PASSWORD"]' - so YMMV. It's a good start, though.

The [license_finder](https://github.com/pivotal/LicenseFinder) gem is important because some corporate environments prohibit certain open source license, in particular those of the GPL family. Some licenses are simply necessary to accept - you can't build a Rails app if you reject them. I've accepted those ahead of time, and I'll accept others if necessary, but I plan on trying to avoid those from the GPL family so as to minimize issues. At present (2022-02-15), the released version of license_finder is incompatible with Ruby 3.1, so I have had to use the main of it. Once gem has been released with that update, I plan to switch to that version.

I use [overcommit](https://github.com/sds/overcommit) to manage git hooks for automating code quality. You obviously don't have to, but I recommend it.

# Code Quality

[Rubocop](https://github.com/rubocop/rubocop) is the standard for basic ruby code quality checks. I've also added some commonly used plugins.

[Reek](https://github.com/troessner/reek) calls out code smells.

[RailsBestPractices](https://github.com/flyerhzm/rails_best_practices) does what it says - checks for common best practices when using Rails.

[Flay](https://github.com/seattlerb/flay) checks for structural similarities. Good for calling out places for refactoring.

[RubyCritic](https://github.com/whitesmith/rubycritic) generates a nice report for the code quality of your project. It does need to be manually run, so it's easy to forget to do it, but it's handy.

# Testing

[RSpec Rails](https://github.com/rspec/rspec-rails), [FactoryBot Rails](https://github.com/thoughtbot/factory_bot_rails), [DatabaseCleaner](https://github.com/DatabaseCleaner/database_cleaner), and [Faker](https://github.com/faker-ruby/faker) are the de facto standard for almost every Rails app I've worked with.

[SimpleCov](https://github.com/simplecov-ruby/simplecov) helps me make sure I have adequate test coverage.

# Profiling

[rack-mini-profiler](https://github.com/MiniProfiler/rack-mini-profiler) is a good starting point for identifying slow spots in an app.

# Related projects

[Suspenders](https://github.com/thoughtbot/suspenders) is an app generator that creates opinionated apps. As this is not a generator, this serves a different purpose, but I plan on looking into the gems they use.

[docker-rails-example](https://github.com/nickjj/docker-rails-example) looks quite similar, and I expect I'll pull ideas from it, as it looks quite modern. Docker is a secondary concern for me, but I'll get around to adding it.

[Bootstrappers](https://github.com/xdite/bootstrappers) looks similar to Suspenders in that it is a generator, not an app to clone. Looks to have some interesting ideas.

# Licenses

This is released under the [MIT](https://spdx.org/licenses/MIT.html) license, but the default creation of a Rails app brings in several gems with a variety of licences. If you want to use Rails apps at all, you basically have to accept all of these.

[MIT](https://spdx.org/licenses/MIT.html)

[ruby](https://spdx.org/licenses/Ruby.html)

[Apache 2.0](https://spdx.org/licenses/Apache-2.0.html)

[Simplified BSD](https://spdx.org/licenses/BSD-2-Clause.html)

[New BSD](https://spdx.org/licenses/BSD-3-Clause.html)

Additionally, I have pre-accepted the following licenses in this app as part of setting up useful gems.

[ISC](https://spdx.org/licenses/ISC.html)

As I come across useful gems with GPL licenses I will note them below and add the particular licenses to this section as "restricted". You are free to use those in your projects, but as noted above, many corporations have issues with GPL software.

[GPL-3.0+](https://spdx.org/licenses/GPL-3.0+.html)

The Brakeman license is an edge case, as it allows you to use it freely to analyze the project's code, but not to offer Brakeman itself as a service without paying. As I cannot predict what you will do with your project, I excluded it.

[Brakeman Public Use License](https://github.com/presidentbeef/brakeman/blob/main/LICENSE.md)

# Useful Gems

Following are gems that are really handy to have, but have been excluded from this project due to licensing. I suggest you consider them anyway.

[bundler-audit](https://github.com/rubysec/bundler-audit) checks for vulnerable versions of gems. [GPL-3.0+](https://spdx.org/licenses/GPL-3.0+.html)
[Brakeman](https://github.com/presidentbeef/brakeman) checks rails apps for security issues. [Brakeman Public Use License](https://github.com/presidentbeef/brakeman/blob/main/LICENSE.md)
