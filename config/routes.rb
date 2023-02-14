Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'tasks#index'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
end
