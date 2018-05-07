Rails.application.routes.draw do
  root 'static#home'
  get 'static/home'

  resources :users
  resources :entries
  resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
