Rails.application.routes.draw do
  root "goals#index"
  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :goals
end
