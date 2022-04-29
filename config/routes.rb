Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update]
  
  resources :foods, only: [:new, :create, :index, :show, :destroy]do
    resources :food_comments,only: [:create, :destroy]
  end
  
  resources :camps, only: [:new, :create, :index, :show, :destroy]do
     resource :favorites, only: [:create, :destroy]
    
  resources :camp_comments, only: [:create, :destroy]
 end
end