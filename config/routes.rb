Rails.application.routes.draw do
  resources :programmer_projects
  resources :category_projects
  resources :categories
  resources :programmers
  resources :projects
  resources :nonprofits
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
