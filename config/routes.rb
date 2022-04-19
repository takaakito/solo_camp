Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :camps, only: [:new, :create, :index, :show]
end