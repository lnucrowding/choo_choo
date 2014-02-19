ChooChoo::Engine.routes.draw do
  get '/activities/', to: 'activities#index', as: 'activities'
end
