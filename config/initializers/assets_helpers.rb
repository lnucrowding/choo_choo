Rails.application.assets.context_class.class_eval do
  include ChooChoo::Engine.routes.url_helpers
end
