Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :rankings

  devise_for :users
  resources :companies

  root "companies#index"
end
