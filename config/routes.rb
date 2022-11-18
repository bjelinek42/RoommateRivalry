Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  patch "/users" => "users#update"
  
  post "/sessions" => "sessions#create"
  
  post "/groups" => "groups#create"

  post "/bets" => "bets#create"
end
