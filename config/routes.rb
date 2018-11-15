Rails.application.routes.draw do
 resources :tickets
 resources :clients
 devise_for :users, :controllers => { :invitations => 'users/invitations' }
 resources :users
 resources :internal_notes
 resources :projects
 resources :categories
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "pages#index"
 get 'pricing' => "pages#pricing"
 get 'dashboard' => "pages#dashboard"
 resources :agencies

 #get 'users/:id/edit' => 'users#edit', :as => :user
 get 'priorities' => "pages#priorities"
 get 'discussions' => "pages#discussions"
    resource :media do
      post 'documents' => 'documents#upload'
end
end
