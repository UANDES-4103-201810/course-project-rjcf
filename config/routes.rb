Rails.application.routes.draw do
  resources :user_projects
  resources :fund_types
  resources :funds
  resources :admins_projects
  resources :paymen_methods
  resources :users
  root 'application#hello'

end
