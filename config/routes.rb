Petbnb::Application.routes.draw do

  resources :dummies, :homes
  
  root to: 'homes#index'

end
