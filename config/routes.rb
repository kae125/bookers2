Rails.application.routes.draw do
  
  
  resources :post_images, only: [:new, :index, :show, :edit]
  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:new, :index, :show, :edit]
  
  get 'homes/top'
  get 'homes/about' => 'homes#about', as: 'about'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  
  devise_for :users
  root to: 'homes#top'

end

