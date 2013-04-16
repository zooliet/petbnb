Petbnb::Application.routes.draw do

  get "reservations/index"

  get "reservations/show"

  get "reservations/new"

  get "reservations/create"

  get "reservations/edit"

  get "reservations/update"

  get "reservations/destroy"

  resources :dummies, :homes, :pet_houses
  
  root to: 'homes#index'

end
