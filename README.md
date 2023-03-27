Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


After initial set up with
rails new \
  -d postgresql \
  -j webpack \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/devise.rb \
  kt-narrative-basic


Should run

rails webpacker:install

But that didn't seem to work so I used:

npm install webpack webpack-cli --save-dev

Which then let me do:

yarn build --watch



Added bootstrap with:

yarn add bootstrap @popperjs/core

// application.css.scss
@import "bootstrap/scss/bootstrap";

// app/javascript/application.js
import "bootstrap";
