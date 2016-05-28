Rails.application.routes.draw do
  devise_for :users
  resources :people
  get 'welcome/index'
  root 'welcome#index'
  resources :contacts, only: [:new, :create]
  get '*path' => redirect('/')
end
