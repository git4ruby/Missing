Rails.application.routes.draw do
  resources :people
  get 'welcome/index'
  root 'welcome#index'
end
