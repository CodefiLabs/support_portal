Rails.application.routes.draw do
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  get 'pricing' => "pages#pricing"
  get 'dashboard' => "pages#dashboard"
  get 'users' => "users#users"
  #get 'users/:id/edit' => 'users#edit', :as => :user

end
