Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users" => "users#update"
  
  post "/sessions" => "sessions#create"
  
  get "/groups/:id" => "groups#show"
  post "/groups" => "groups#create"

  post "/bets" => "bets#create"
end
