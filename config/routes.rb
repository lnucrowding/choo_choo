ChooChoo::Engine.routes.draw do
  get '/activities/', to: 'activities#index', as: 'activities'
  root :to => 'activities#index'
end
