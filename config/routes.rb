Rails.application.routes.draw do
  resources :categories
  resources :user_fund_projects
  resources :promises
  resources :wishlists
  resources :proyects
  resources :use_roles
  resources :user_projects
  resources :fund_types
  resources :funds
  resources :admins_projects
  resources :paymen_methods
  resources :users
  root 'application#hello'

end
