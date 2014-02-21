Rails.application.assets.context_class.class_eval do
  # Allows assets to use the engines url helpers
  include ChooChoo::Engine.routes.url_helpers
end
