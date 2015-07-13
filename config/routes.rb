Rails.application.routes.draw do
  post 'event' => 'event#index'

  devise_for :users
  root 'pin_posts#index'

  resources :pin_posts
end
