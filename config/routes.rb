Rails.application.routes.draw do
  devise_for :users
  
  resources :post_images, only: [:new, :index, :show, :edit, :destroy]
  resources :books, only: [:new, :index, :show, :edit, :destroy]
  resources :users, only: [:new, :index, :show, :edit]
  
  get 'homes/top'
  get 'homes/about' => 'homes#about', as: 'about'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  
  root to: 'homes#top'

end

