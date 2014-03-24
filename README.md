# ChooChoo [![Build Status](https://travis-ci.org/lnucrowding/choo_choo.png?branch=master)](https://travis-ci.org/lnucrowding/choo_choo)

## About

ChooChoo is an application for dynamic activity tracking in Ruby On Rails. By storing information triggered by (tracked) model changes, ChooChoo will then let you reference these changes in a dynamic and highly customizable way.

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

When listening for model activities through ChooCchoo you will need to set up a parent-children behaviour.
In the example below, we will be using the dummy app found in spec/dummy to illustrate how ChooChoo works.


The first thing to do is to decide for a model that will act as a parent. Using the dummy app, we will go for
app/models/post.rb as it is a connecting point for comments and users.

```ruby
# Simply include ChooChoo::ParentNode into post.rb and you're all set
include ChooChoo::ParentNode
```

Now that we have a parent, let's give ChooChoo some children. In this example we will only focus on
Comment model. But you can of course add as many children as you wish.

```ruby
# First, include the ChooChoo::ChildNode into comment.rb
include ChooChoo::ChildNode
```

```ruby
# And moving on, we need to tell this child where his parent is
# by simply adding this line into comment.rb
set_parent :post
```

So that's all you really need for setting upp ChooChoo - a simple and lightweight activity listener for your models.
From here you can now get access to your activities. For instance, in your views or controller actions by the following examples.

```ruby
# Get the whole related ChooChoo instance for a post
@post.activity
```
```ruby
# Find out what the last action for the activity was
# This returns a string of 'created', 'updated' or 'deleted'
# Please do note that if a parent node is deleted you will no longer have access to the activity
@post.activity.last_action
```
```ruby
# Get the latest changed child for the parent
# This returns the instance of the object (child) tracked by ChooChoo
@post.activity.last_updated_node
```

```ruby
# You can also just access the reference id if you so wish by
@post.activity.last_updated_node_id
```

Of course, you also have access to the timestamp columns created_at and updated_at that are updated accordingly on
new activities. From here, you are free to customize the ChooChoo so it fits your needs or simply use the given solution
and make own customizations through views and helpers in your app that utilizes ChooChoo.

### Events

The `activity.last_action` contains a string of the last registered event like
follows:

- `created` when a parent or child is created
- `updated` when a parent or child is updated
- `deleted` when a **child** is deleted
- `destroyed` when a parent is deleted (this is different because this means
you lose the references to the models)

## Testing

To run the tests, you first have to make sure it's installed properly, and then
clone the testing database:

    rake app:db:test:clone

You can then run the tests with:

    bundle exec rspec
