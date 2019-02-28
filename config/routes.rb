Rails.application.routes.draw do

  devise_for :users
  root 'posts#title'
  resources :posts
end
