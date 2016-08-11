Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  root :to => 'static#landing'

  resources :users
  resources :user_sessions
  resources :contributors
  resources :designs

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  namespace :api do
    namespace :v1 do 
      resources :users, only: [:index, :create, :show, :update, :destroy]
      resources :user_sessions, only: [:index, :create, :show, :update, :destroy]
      resources :designs, only: [:index, :create, :show, :update, :destroy]
      resources :components, only: [:index, :create, :show, :update, :destroy]
      resources :component_groups, only: [:index, :create, :show, :update, :destroy]
      resources :contributors, only: [:index, :create, :show, :update, :destroy]
      
      resources :runs, only: [:index, :create, :show, :update, :destroy]
    end
  end
end
