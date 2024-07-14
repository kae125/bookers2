Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'homes/top'
  get 'homes/about' => 'homes#about', as: 'about'
  
  devise_for :users
  root to: 'homes#top'
end

