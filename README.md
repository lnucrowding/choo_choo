# ChooChoo [![Build Status](https://travis-ci.org/lnucrowding/choo_choo.png?branch=master)](https://travis-ci.org/lnucrowding/choo_choo)

## Installation

Add this to your `Gemfile`:

    # since it's not a proper gem yet, pull from this repo
    gem 'choo_choo', github: 'lnucrowding/choo_choo'

Install the required choo_choo migrations:

    rake choo_choo:install:migrations

And then run:

    rake db:migrate

**Optional:**

You can also specify a branch, tag or even a ref:

    gem 'choo_choo', github: 'lnucrowding/choo_choo', branch: 'my_feature'

    gem 'choo_choo', github: 'lnucrowding/choo_choo', tag: 'v0.1.0'

    gem 'choo_choo', github: 'lnucrowding/choo_choo', ref: '6c46204'

Add this to your `routes.rb`:

    mount ChooChoo::Engine => "/choo_choo"

And to include the javascript, either use this in an `erb`-template:

    <%= javascript_include_tag "choo_choo/application" %>

Or this in a `js`-file:

    //= require choo_choo/application

## Usage

To see a working example, you can boot up the dummy application:

    cd spec/dummy
    rails s

You can override the template used to render the activities by creating a
`app/views/choo_choo/activities/current_time.html.erb` file in the host application.

To have ChooChoo track a PARENT model in your app, add the following line to the model in question:

    include ChooChoo::Concerns::Trackable::Parent

To have ChooChoo track an ASSOCIATED model in your app, add the following line instead:

    include ChooChoo::Concerns::Trackable::Associate
