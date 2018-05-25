Rails.application.routes.draw do
  devise_for :users
  resources :user_fund_projects
  resources :user_roles
  resources :promises
  resources :user_projects
  resources :wishlists
  resources :categories
  resources :proyects
  resources :users
  root 'application#index'
  resources :categories do
    resources :proyects
  end
  resources :users do
    resources :proyects
  end
  resources :proyects do
    resources :promises
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
