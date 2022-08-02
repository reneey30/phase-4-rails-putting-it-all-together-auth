Rails.application.routes.draw do

  resources :recipes, only: [:index, :create]
  
  # get "/recipes", to: "recipes#indexx" 
  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
