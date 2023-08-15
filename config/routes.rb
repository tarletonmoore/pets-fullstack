Rails.application.routes.draw do
  # root "pets#index"
  # root "users#new"

  resources :pets
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
