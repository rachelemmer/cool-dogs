Rails.application.routes.draw do

  resources :dogs

  # get "/dogs", to: "dogs#index"
  # get "/dogs/:id", to: "dogs#show"
  # post "/dogs", to: "dogs#create"

end
