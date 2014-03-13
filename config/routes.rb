Week6::Application.routes.draw do

  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  get "/authenticate" => 'sessions#create'

  root 'sizeadvice#index'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/show" => 'users#show'

  get "sizeadvice/about" => 'sizeadvice#about'

  # Size Advice Code

  # CREATE
  get "/sizeadvice/new" => "sizeadvice#new"
  get "/sizeadvice/create" => "sizeadvice#create"

  # READ
  get "/sizeadvice" => 'sizeadvice#index'
  get "/sizeadvice/:product_id/show" => "sizeadvice#show"

  # UPDATE
  get "/sizeadvice/:product_id/edit" => "sizeadvice#edit"
  get "/sizeadvice/:product_id/update" => "sizeadvice#update"

  # DELETE
  get "/sizeadvice/:product_id/delete" => "sizeadvice#destroy"




end
