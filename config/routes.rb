Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :tours, only: [:new, :create, :show]
  resources :locations, only: [:new, :create, :show]
end
