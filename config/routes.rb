Rails.application.routes.draw do
  # categories routes
  get "/categories" => "categories#index"

  post "/categories" => "categories#create"

  get "/categories/new" => "categories#new"

  get "/categories/:id/edit" => "categories#edit"

  get "/categories/:id" => "categories#show", as: "category"

  patch "/categories/:id" => "categories#update"

  delete "/categories/:id" => "categories#delete"

  # nested tasks routes
  get "/categories/:categories_id/tasks" => "tasks#index"

  get "/categories/:categories_id/tasks/:id" => "tasks#show", as: "task"

  get "/categories/:categories_id/tasks/:id/edit" => "tasks#edit", as: "task_edit"

end
