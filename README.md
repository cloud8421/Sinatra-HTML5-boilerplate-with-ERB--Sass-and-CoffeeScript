The Sinatra HTML5 boilerplate is an empty Sinatra app configured to use [Paul Irish's HTML5 boilerplate as a layout][1], [SCSS][2] for CSS files and [Coffeescript][3] for Javascript.

The wonderful thing about Sinatra is that it lets you move as you wish, so if any of the listed features doesn't work for you, there's an easy way to make a change. Here's the list of cool stuff.

- Bundler support with an included Gemfile
- Config.ru ready with Bundler integration
- HTML5 boilerplate stripped
- Coffeescript support (real time compiling)
- SCSS support through the SASS gem (real time compiling)

By default it uses ERB for templates. You can change that, however make sure to have the boilerplate in the format you like (someone said HAML?). Here are some links taken from the official Sinatra documentation that will help you out in making all of these changes.

- [Views/Templates][4]
- [Coffeescript][5]
- [Sass][6]

Please note that there are some other similar projects that add some more features that may make it easier for you to prototype. This one is meant to be a production template with no visual additions. A clean slate.

# HOW TO

Download the package or fetch the repository, but don't clone it. You want a fresh start.
Note also that if you try to deploy this repository on Heroku, you will get a notice that tells you that you're missing a Gemfile.lock file. That's intentional on my end, as that file is usually project-specific, so Bundler will create one for you when you run it. This repository's .gitignore file excludes Gemfile.lock, once again a good reason not to clone unless you want to modify the project itself.

I'm assuming you name the project folder `my_sinatra_app`.

    cd my_sinatra_app

You should use [rvm][7] to manage your gems. Here's one liner to get you started. Run it from inside the `my_sinatra_app` folder

    rvm use 1.9.2@sinatra-html5-boilerplate --create --rvmrc

Now you have a sandboxed Sinatra folder with an RVM gemset.

If you don't have Bundler installed as a global gem or have any other reason to use it locally, you need to install it in the gemset.

    gem install bundler

Then you need to run:

    bundle install
    
Now run:

    rackup
    
Then visit http://localhost:9292- You should see Hello World. You can also use [Shotgun][8] to ease development instead of `rackup`.
    
# COFFEESCRIPT SUPPORT

I'd advise you to install Coffee as a NPM module, as it gives you a bit more flexibility. [Here are the instructions to do that][9].

# FOLDERS

Configuration is stock, so most of the files are in the `/public` folder.

The main `script.coffee` and `application.scss` files are respectively into the `coffee` and `scss` folders into the `views` folder as they need to be processed before being served. This is defined in the `my_sinatra_app.rb` file right after the `require` statements. The pattern is simple: if you need a `myname.css` file, then create a `myname.scss` file. In your layout, reference to the .js and .css files, not the .coffee and .scss sources.

The `index.html` boilerplate file has been renamed `layout.erb`, the only difference with the stock boilerplate file is the presence of the `<%= yield %>` in the main container.

# DEPLOY

As a default, the Gemfile contains a group that you should uncomment if you want to deploy on Heroku. Deployment is standard, [here's the guide to do that][http://devcenter.heroku.com/articles/rack#frameworks]. You should be able to avoid configuration and just need to push the repo.
I haven't tested it on other environments, but it should work fine. If you experience some weird behaviours related to SASS or Coffeescript, your best shot is to compile them on your machine and deploy them as static files in the public directory. Doing this makes the project a completely stock Sinatra app, so that should be easy to debug.

# THANKS AND LINKS

[Froots's Sinatra HTML5 boilerplate][10] inspired me.

I decided to make my own simply because I don't use HAML and didn't want to have any kind of visual. But his project is cool, check it out if you need that stuff.

[1]: http://html5boilerplate.com/
[2]: http://sass-lang.com/
[3]: http://jashkenas.github.com/coffee-script/
[4]: http://www.sinatrarb.com/intro.html#Views%20/%20Templates
[5]: http://www.sinatrarb.com/intro.html#CoffeeScript%20Templates
[6]: http://www.sinatrarb.com/intro.html#Scss%20Templates
[7]: https://rvm.beginrescueend.com/
[8]: http://rtomayko.github.com/shotgun/
[9]: http://jashkenas.github.com/coffee-script/#installation
[10]: https://github.com/froots/sinatra-heroku-boilerplate.