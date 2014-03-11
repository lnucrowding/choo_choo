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

    # TODO: is this really needed?
    mount ChooChoo::Engine => "/choo_choo"


## Usage

In the models you wish to listen to activities for:

TODO: explain child nodes when they are implemented

```ruby
# as in post.rb in the dummy app
include ChooChoo::ParentNode
```

You need a controller like this to supply the events

```ruby
# as in activities_controller.rb in the dummy app
class ActivitiesController < ApplicationController
  def index
    @activities = ChooChoo::Activity.order(updated_at: :desc)
  end
end
```

And to render out the activities:

```erb
<%= render 'choo_choo/activities/all' %>
```




## Testing

To run the tests, you first have to make sure it's installed properly, and then
clone the testing database:

    rake app:db:test:clone

You can then run the tests with:

    rspec
