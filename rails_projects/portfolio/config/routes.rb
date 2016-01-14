Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'


  get '*path' => redirect('/')
end