Rails.application.routes.draw do
  devise_for :users
  
  root to: 'homes#top'
  
  resources :post_images, only: [:new, :index, :show, :edit, :destroy]
  resources :books, only: [:new, :index, :show, :edit, :destroy]
  resources :users, only: [:new, :index, :show, :edit, :update]
  
  get 'homes/top'
  get 'home/about' => 'homes#about', as: 'about'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  
  

end

