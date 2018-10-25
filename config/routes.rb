Rails.application.routes.draw do
  # get "projects" => "projects#index"
  # get "projects/:id" => "projects#show"
  # get "projects/:id/edit" => "projects#edit"
  # patch "projects/:id" => "projects#update"
  resources :projects

  # get "categories" => "categories#index"
  # get "categories/:id" => "categories#show"
  # get "categories/:id/edit" => "categories#edit"
  # patch "categories/:id" => "categories#update"
  resources :categories

end
