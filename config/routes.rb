Rails.application.routes.draw do
  get 'entries/create'

  devise_for :users
  root 'homes#index'
  resources :jobs, only: [:index, :new, :create, :show]
   resources :entries
end
