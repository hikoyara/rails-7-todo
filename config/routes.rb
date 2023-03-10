Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"

    root 'tasks#index'

    get 'signup', to: 'users#new'
    post 'signup', to: 'users#create'

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'

    resources :users, only: [] do
        resources :tasks, only: :index
    end
    resources :tasks, only: %i[create update]

    namespace :api do
        get 'login', to: 'login#show'
        resources :tasks, only: %i[index create update]
    end
end
