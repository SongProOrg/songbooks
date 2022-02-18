Rails.application.routes.draw do
  get 'songs/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :songs, only: [:new, :create, :show]
end
