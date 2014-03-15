Week6::Application.routes.draw do

  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  get "/authenticate" => 'sessions#create'

  root 'sizeadvice#home'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/show" => 'users#show'

  get "sizeadvice/about" => 'sizeadvice#about'
  get "sizeadvice/conditions" => "sizeadvice#conditions"

  # Size Advice Code

  # CREATE
  get "/sizeadvice/new" => "sizeadvice#new"
  get "/sizeadvice/create" => "sizeadvice#create"

  # READ
  get "/home" => 'sizeadvice#home'
  get "/sizeadvice/:product_id/show" => "sizeadvice#show"

  # UPDATE
  get "/sizeadvice/:product_id/edit" => "sizeadvice#edit"
  get "/sizeadvice/:product_id/update" => "sizeadvice#update"

  # DELETE
  get "/sizeadvice/:product_id/delete" => "sizeadvice#destroy"




end
