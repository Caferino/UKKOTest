# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - 7.0.6
* System dependencies - Postgresql
* Configuration - Localhost
* Database creation - Local
* Database initialization - Local
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...

**How to execute:**

Concerns / To-Do:

- **Sign-in view:**

1. What if the user already exists after pressing "Sign Up"?
2. Security breaches, things like 'or'1'='1 (SQL Injection Attack).
3. Placeholder text in input fields won't go away after writing.
4. Enhance error displays.
5. ~~"`<div class="logo">`" is not respecting <div class"logo-container"> (/home/caferino/Documents/GitHub/UKKOTest/app/views/users/index.html.erb line:34:39) for some reason. Tried a lot of combinations with px, vw, %... Removed SVG's default size in a text editor aswell. Managed to give it a temporal fix (align-items: flex-start;), but it's not going to adapt well to a lot of screen sizes, it keeps overlapping / getting outside its container. It won't respect any rule that centers it and keeps it there, same happens with the Dashboard's logo, it won't center itself as I tell it to.~~

- **Dashboard:**

1. ~~In index.html.erb line:43, and dashboard.css (classes: .container-fluid and .row) are not respecting or for some reason adding "padding-left" when it should not. Have deleten, used 0 as value and "!important", but it won't respect any, especifically ".row". It's odd, it makes the Dashboard's menu have a little pad on the left, affecting its alignment with the logo above.~~
2. For some fixes regarding CSS, I had to stop the server and run "bundle exec rails assets:precompile" in order for it to respect some of the rules I had in my own CSS files. I shouldn't use name that overlap with Bootstrap's, but still, I found it very weird that I couldn't just refresh the page to see the changes, because that works with some CSS, not all. I think only Bootstrap's CSS needs to be precompiled, maybe I need to tell it to have it always present to "reload it live" while developing, maybe it has to be in "stylesheets/application.scss" for that, or something, not sure yet.
3. DDD.
