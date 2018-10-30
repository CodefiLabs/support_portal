Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  get 'pricing' => "pages#pricing"
  get 'dashboard' => "pages#dashboard"

=======
  get "projects" => "projects#index"
  get "categories" => "categories#index"
>>>>>>> 94104f0c8505a1c63b135bcea5c154190c618a1b
  
end
