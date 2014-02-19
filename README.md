# ChooChoo

## Installation

Add this to your `Gemfile`:

    # since it's not a proper gem yet, pull from this repo
    gem 'choo_choo', github: 'lnucrowding/choo_choo'

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
