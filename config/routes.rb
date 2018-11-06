Rails.application.routes.draw do
<<<<<<< HEAD
  resources :clients
  devise_for :users
=======
  devise_for :users, :controllers => { :invitations => 'users/invitations' }
  resources :users
  resources :internal_notes
>>>>>>> master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  get 'pricing' => "pages#pricing"
  get 'dashboard' => "pages#dashboard"
<<<<<<< HEAD
  resources :agencies
=======
  #get 'users/:id/edit' => 'users#edit', :as => :user


  get 'priorities' => "pages#priorities"
  get 'discussions' => "pages#discussions"
>>>>>>> master
end
