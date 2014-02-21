module ChooChoo
  class Engine < ::Rails::Engine
    isolate_namespace ChooChoo

    # needs to be explicit for some reason
    require 'rails-timeago'

    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
