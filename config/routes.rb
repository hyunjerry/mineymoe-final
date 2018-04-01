Rails.application.routes.draw do
  #google login---
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :tmpdatabasaes

  root to: "home#show"
  get 'home/show'

  get 'post/new'

  get '/post' => 'post#index'

  get 'post/post' => 'post#post'
  post 'post/create' => 'post#create'

  get 'like' => 'post#postlike'

  get "like/:post_id" => "post#postlike"
  get "unlike/:post_id" => "post#postunlike"



########################
  post 'partycreate' => 'partypost#partycreate'
  post 'partycomment' => "partypost#partycomment"
  get "partyjoin/:post_id" => "partypost#partyjoin"
  get "partydisjoin/:post_id" => "partypost#partydisjoin"


  #
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')
  # get 'signout', to: 'sessions#destroy', as: 'signout'

  get 'main/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
