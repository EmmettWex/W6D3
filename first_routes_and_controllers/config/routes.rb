Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/users', to: "users#index"
  # get '/users/new', to: "users#new"
  # get '/users/:id/edit', to: "users#edit"
  # get '/users/:id', to: "users#show"

  # post '/users', to: "users#create"

  # patch '/users/:id', to: "users#update"
  # put '/users/:id', to: "users#update"

  # delete '/users/:id', to: "users#destroy"

  resources :users
end
