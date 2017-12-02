# Let's Build: With Ruby on Rails - A Twitter Clone

![feature-image](https://i.imgur.com/6QHjYJF.jpg)



Welcome to our next Let's Build! This build introduces a well known social media giant Twitter into the mix as inspiration for the project. We will be creating a knock-off of sorts called **Twittter**. 

This app will most notably demonstrate a user role system giving your web application and navtive application feel all within the browser. I'll be going bit faster than the [previous build](https://web-crunch.com/lets-build-with-ruby-on-rails-blog-with-comments/) as it was more of a foundational exercise where I explained common concepts revolving around the Ruby on Rails ecosystem. We'll make use of Rails generators to help scaffold some of the things I've already covered. If you haven't watched the [first Let's Build](https://web-crunch.com/lets-build-with-ruby-on-rails-blog-with-comments/), I invite you to do so in order to understand what we are doing.

#### Download the source code

[Download the source code](https://github.com/justalever/twittter)

### What we are building

The app itself will feature a basic CRUD principle where we can create, read, update, and destroy *Tweeets*. In essence, this is the same as my previous build where we created posts for a blog.  On top of the *Tweeets*, I introduce a new gem called [Devise](https://github.com/plataformatec/devise) which makes creating an entire user role and authentication system easy. Combined with this gem we can authenticate users who want to author *Tweeets*. A user's *Tweeets* are then also tied to their account. The end result is a public facing site with a stream of tweets from different users. Users that have and account can login to create their own *Tweeets* to add to the public stream.

### What we won't be covering

Twitter is pretty elaborate application. I won't be covering replies, retweets, likes, and quite a few other foundational features of the famous social media giant. Instead I invite you to tinker with how to possible add those features. Similar to the [blog with comments build](https://web-crunch.com/lets-build-with-ruby-on-rails-blog-with-comments/) I did, see if you can figure out how to add replies to the application on your own. (Tip: It's the same as adding comments to the blog post as I did in the previous build ;) ). I may revisit this app to add more features as another exercise but I truthfully ran out of time! Let me know if you'd like to see me extend this further. 

There are also a few gems in the wild for "liking" posts. [Here's a favorite of mine](https://github.com/schneems/Likeable)

**Note:** One big error I noticed after calling it quits on this build was that any logged in user could edit **any** other user's tweeets. This is a big security flaw as a user's abilities should only lie within their own account. See if you can find a way to only allow the current logged in user to edit their own tweets and not other users. I may revisit this series to extend and address these issues. 

### Ruby gems used in this build

- [Better Errors](https://rubygems.org/gems/better_errors) - For better errors

- [Bulma](https://github.com/joshuajansen/bulma-rails) - for easy CSS. Feel free to roll your own styles and/or use a different framework.

- [Guard](https://github.com/guard/guard) - Useful for live reloading our `scss`, `js`, `css`, and `erb` files, although it's capable of much more!

  *Guard is required for the Guard LiveReload gem to work*

- [Guard LiveReload](https://github.com/guard/guard-livereload)

- [Simple Form](https://github.com/plataformatec/simple_form) - For simple forms!

- [Devise](https://github.com/plataformatec/devise) - Effortless user roles and authentication

- [Gravatar_image_tag](https://github.com/mdeering/gravatar_image_tag) - Integrated image tag which spits out gravatars.

  ​

Continue reading on [web-crunch.com](https://web-crunch.com/lets-build-with-ruby-on-rails-a-twitter-clone/)
