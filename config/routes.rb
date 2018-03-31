Rails.application.routes.draw do
<<<<<<< HEAD
  #google login---
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :tmpdatabasaes

  root to: "home#show"
  get 'home/show'

  get 'post/post'

  #
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # get 'signout', to: 'sessions#destroy', as: 'signout'

  get 'main/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
