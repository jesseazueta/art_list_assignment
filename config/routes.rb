Rails.application.routes.draw do
  resources :reviews
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'uncompleted/' => 'projects#uncompleted'
  get 'completed/' => 'projects#completed'
end
