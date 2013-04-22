Petbnb::Application.routes.draw do
  resources :dummies, :homes, :pet_houses, :reservations
  
  root to: 'homes#index'

end
