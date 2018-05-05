Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
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
