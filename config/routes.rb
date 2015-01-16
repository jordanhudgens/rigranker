Rails.application.routes.draw do
  resources :rankings

  devise_for :users
  resources :companies

  root "companies#index"
end
