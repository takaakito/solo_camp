Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  
  resources :users, only: [:show, :edit, :update]
  
  resources :foods, only: [:new, :create, :index, :show, :destroy]do
    resource :food_favorites, only: [:create, :destroy]
  
  resources :food_comments,only: [:create, :destroy]
  end
  
  resources :camps, only: [:new, :create, :index, :show, :destroy]do
     resource :favorites, only: [:create, :destroy]
    
  resources :camp_comments, only: [:create, :destroy] 
 end
 
 resources :plays, only: [:new, :index, :show, :create, :destroy]do
   resource :play_favorites, only: [:create, :destroy]
   
   resources :play_comments, only:[:create, :destroy]
end
  namespace :admin do
    resources :users
  end
end