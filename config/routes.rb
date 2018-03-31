Rails.application.routes.draw do
  resources :tmpdatabasaes
  get 'main/home'
  root 'tmpdatabasaes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
