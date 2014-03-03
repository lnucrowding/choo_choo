ChooChoo::Engine.routes.draw do
  
  # a intresting thing here would be to have altanative routes.
  # one example is the facebook user profile where you can se another persons activities. 
  # Then we cannot rely on current_user to know what should be shown. 
  # Instead we need to send a id param to get another users activities.
  # For example: get "activities/users/:id/", to: "activities#index"
  
  get '/activities/', to: 'activities#index', as: 'activities'
  root :to => 'activities#index'
end
