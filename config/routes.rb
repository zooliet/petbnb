Petbnb::Application.routes.draw do
  resources :dummies
  
  root to: 'dummies#index'

end
