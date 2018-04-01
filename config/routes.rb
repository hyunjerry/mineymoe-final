Rails.application.routes.draw do
  #google login---
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"
  get 'home/show'


  get '/post' => 'post#index'


  get 'post/post' => 'post#post'
  post 'create' => 'post#create'

  get 'like' => 'post#postlike'

  get "like/:post_id" => "post#like"
  get "unlike/:post_id" => "post#unlike"



########################
  #
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # get 'signout', to: 'sessions#destroy', as: 'signout'


end
