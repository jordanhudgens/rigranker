Rails.application.routes.draw do
  get 'rigs/index'

  get 'rigs/show'

  get 'rigs/new'

  get 'rigs/edit'

  get 'rigs/create'

  get 'rigs/udpate'

  get 'rigs/destroy'

  resources :deductions

  resources :rigs

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :rankings

  devise_for :users
  resources :companies

  root to: 'rails_admin/main#dashboard'
end
