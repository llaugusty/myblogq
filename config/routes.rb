Rails.application.routes.draw do
  devise_for :users
  root 'pin_posts#index'

  resources :pin_posts
end
