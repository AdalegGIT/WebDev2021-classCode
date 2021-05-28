Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users, only: [:new , :create]
  resources :places
  resource :sessions, only: [:new , :create , :destroy]

  root 'places#index'
end
