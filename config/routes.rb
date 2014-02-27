Week6::Application.routes.draw do

  get "/" => 'products#index'

  # Product-related URLs

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'

  # CREATE
  get "/products/new" => "products#new"
  get "/products/create" => "products#create"

  # READ
  get "/products" => 'products#index'
  get "/products/:product_id/show" => "products#show"

  # UPDATE
  get "/products/:product_id/edit" => "products#edit"
  get "/products/:product_id/update" => "products#update"

  # DELETE
  get "/products/:product_id/delete" => "products#destroy"


  # Review-related URLs

  get "/reviews/create" => 'reviews#create'

end
