Rails.application.routes.draw do
  # categories routes
  get "/categories" => "categories#index"

  get "/categories/new" => "categories#new"

  post "/categories" => "categories#create"

  get "/categories/:id" => "categories#show", as: "category"
end
