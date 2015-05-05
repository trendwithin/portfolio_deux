Rails.application.routes.draw do
  resources :todones
  devise_for :users
  resources :projects
  root 'home#index'
end
