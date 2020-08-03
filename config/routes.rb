Rails.application.routes.draw do
  resources :cities
  resources :stunning_views
  root to: "stunning_views#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
