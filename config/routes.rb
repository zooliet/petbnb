Petbnb::Application.routes.draw do

  resources :dummies, :homes, :pet_houses
  
  root to: 'homes#index'

end
