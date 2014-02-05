# ChooChoo

## Installation

TODO: Update instructions

Add this line to your application's Gemfile:

    gem 'choo_choo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install choo_choo

## Usage


Create a class inheriting `FeedObject` and configure what you want it to include:

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
