Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: 'users/sessions'
  }

  resources :recipezs
  resource :user, only: [:edit, :destroy] do
    collection do
      patch 'update_password'
    end
  end

  resources :users, :only =>[:index]
  match '/users/:id', to: 'users#show', via: 'get', :as => :admin_show_user
  match '/users/:id', to: 'users#destroy', via: 'delete', :as => :admin_destroy_user
  
  root 'recipezs#index'
end
