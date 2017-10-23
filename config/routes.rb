Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: 'users/sessions'
  }

  resources :recipezs
  resources :users
  root 'recipezs#index'
end
