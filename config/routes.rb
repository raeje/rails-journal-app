Rails.application.routes.draw do
  # categories routes
  get "/categories" => "categories#index"

  get "/categories/new" => "categories#new"

  post "/categories" => "categories#create"

  get "/categories/:id" => "categories#show", as: "category"

  delete "/categories/:id" => "categories#delete"

  get "/categories/:id/edit" => "categories#edit"

  patch "/categories/:id" => "categories#update"

  # tasks routes

end
