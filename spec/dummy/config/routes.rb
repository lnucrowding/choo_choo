Rails.application.routes.draw do

  root to: 'activities#index'

  mount ChooChoo::Engine => "/choo_choo"
end
