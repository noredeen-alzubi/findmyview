Rails.application.routes.draw do
  get 'users/new'
  resources :cities
  resources :stunning_views
  resources :users, only: [:new, :update, :create, :destroy]
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
