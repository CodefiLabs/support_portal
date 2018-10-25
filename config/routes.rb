Rails.application.routes.draw do
  get "projects" => "projects#index"
  get "categories" => "categories#index"
  
end
