Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
 
  get 'tags/index'
  get 'tags/new'
  devise_for :users
  resources :blogs
  resources :users
  resources :comments
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
