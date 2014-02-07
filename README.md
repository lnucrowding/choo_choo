# ChooChoo

## About

ChooChoo provides automatic activity tracking for your models in Rails 3 and 4. ChooChoo automatically caches information triggered by changes in your model, and gives you the ability to present these recorded activities to your users in a realtime activity feed.

## Installation

TODO: Update instructions

Add this line to your application's Gemfile:

    gem 'choo_choo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install choo_choo

## Usage


Create a class inheriting `Carriage` and configure what you want it to include,
and a class inheriting `Train` to define how it should be collected.

```ruby
require 'choo_choo'

# define how the data shall be collected
MySweeper < Train

    def sweep
        # collect the data
    end

end

# define how the data is structured
MyFeedObject < Carriage

    has_many: creators
    has_many: comments

end
```
