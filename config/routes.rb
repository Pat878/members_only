Rails.application.routes.draw do

  root 'posts#index'
  get 'posts/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/post',   to: 'posts#new'
  post   '/post',   to: 'posts#create'
  get  '/allposts', to: 'posts#index'
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
