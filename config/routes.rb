Rails.application.routes.draw do
  resources :user_projects
  resources :fund_types
  resources :funds
  resources :admins_projects
  resources :paymen_methods
  resources :users
  root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
