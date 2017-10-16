Rails.application.routes.draw do
  devise_for :users, controllers: { 
    sessions: 'users/sessions'
  }

  resources :recipezs
  root 'recipezs#index'
end
