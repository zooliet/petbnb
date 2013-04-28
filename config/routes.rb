Petbnb::Application.routes.draw do
  devise_for :users

  resources :dummies, :homes, :pet_houses, :reservations
  
  root to: 'homes#index'

end
