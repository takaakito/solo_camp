Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update]
  
  resources :camps, only: [:new, :create, :index, :show, :destroy]do
  resources :camp_comments, only: [:create, :destroy]
 end
end