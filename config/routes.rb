Rails.application.routes.draw do
  resources :users
  resources :jobs
  # get "/sessions", to: "sessions#index"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   
  # Defines the root path route ("/")
  # root "articles#index"
end
