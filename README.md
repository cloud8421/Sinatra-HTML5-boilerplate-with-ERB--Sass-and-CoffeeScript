The Sinatra HTML5 boilerplate is an empty Sinatra app configured to use Paul Irish's HTML5 boilerplate as a layout, SCSS for CSS files and Coffeescript for JS.

The wonderful thing about Sinatra is that it lets you move as you wish, so if any of the listed features doesn't work for you, there's an easy way to make a change. Here's the list of cool stuff.

- Bundler support with an included Gemfile
- Config.ru ready with Bundler integration
- HTML5 boilerplate stripped
- Coffeescript support through therubyracer gem
- SCSS support through the SASS gem 

By default it uses ERB for templates, however it's damn easy to switch to Haml or anything you like. Here are some links taken from the official Sinatra documentation that will help you out.

rvm use 1.9.2@sinatra-html5-boilerplate --create --rvmrc

gem install bundler

bundle install