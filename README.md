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

## Testing

To run the tests, you first have to make sure it's installed properly, and then
clone the testing database:

    rake app:db:test:clone

You can then run the tests with:

    rspec

## Usage

To see a working example, you can boot up the dummy application:

    cd spec/dummy
    rails s

You can override the template used to render the activities by creating a
`app/views/choo_choo/activities/current_time.html.erb` file in the host application.

To have ChooChoo track your application's model(s), add the following line to the model in question:

    include ChooChoo::Locomotive

Then map your attributes to ChooChoo (also in your model):

    cc_header :your_title_or_header_attribute
    cc_excerpt :your_content_attribute
    cc_associates :your_child_attribute, :your_second_child_attribute

OPTIONS: You can specify a custom excerpt length (default is 60 characters) by adding an integer after you excerpt-attribute:

    cc_excerpt :your_content_attribute, 42
