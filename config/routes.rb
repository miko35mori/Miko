Rails.application.routes.draw do
  get 'blogs/index'
  get 'losts/top' => 'losts#top'
  get 'losts/:lost_id/likes' => 'likes#create'
  get 'losts/:lost_id/likes/:id' => 'likes#destroy'
  get 'groups/:group_id/favorites' => 'favorites#create'
  get 'groups/:group_id/favorites/:id' => 'favorites#destroy'
  devise_for :users
  root 'losts#index'
  resources :blogs
  
  resources :losts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

   resources :groups do
   resources :favorites, only: [:create, :destroy]
   resources :messages, only: [:create]
    end
end