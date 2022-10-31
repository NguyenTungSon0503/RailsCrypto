Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  get 'home/lookup'
  get 'home/table'
  post '/home/lookup' => 'home/lookup'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
