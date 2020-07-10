Rails.application.routes.draw do
  resources :programmer_projects
  resources :category_projects
  resources :categories
  resources :programmers
  resources :projects
  resources :nonprofits
  
  get 'signup', to: 'user#new', as: 'signup'
  post 'signup', to: 'user#create'
  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'session#create', as: 'sessions'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
