Rails.application.routes.draw do
  get 'tags/index'
  get 'tags/new'
  devise_for :users
  resources :blogs
  resources :users
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
