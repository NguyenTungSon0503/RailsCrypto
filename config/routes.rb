Rails.application.routes.draw do
  devise_for :users
  get 'subhome/about'
  get 'subhome/readme'
  get 'home/index'
  get 'home/about'
  get 'home/lookup'
  get 'home/search'
  get 'home/table'
  get 'home/readme'
  post '/home/lookup' => 'home/lookup'
  post '/home/search' => 'home/search'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#search"
end
