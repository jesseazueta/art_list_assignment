Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :reviews
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'uncompleted/' => 'projects#uncompleted'
  get 'completed/' => 'projects#completed'
end
