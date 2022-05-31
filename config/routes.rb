Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :dinings
  resources :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources: users --> (devise? new, create) show edit update
  # resources: dinings --> all 7 CRUD actions
  # resources: bookings --> new, create, delete, show, index (for the host to see his bookings)
end
