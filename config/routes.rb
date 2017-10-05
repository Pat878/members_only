Rails.application.routes.draw do

  get 'posts/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get    '/post',   to: 'posts#new'
  post   '/post',   to: 'posts#create'
  get  '/allposts', to: 'posts#index'
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
