Rails.application.routes.draw do
  resources :internal_notes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  get 'pricing' => "pages#pricing"
  get 'dashboard' => "pages#dashboard"
  get 'priorities' => "pages#priorities"
  get 'discussions' => "pages#discussions"
end
