Rails.application.routes.draw do
  post 'event' => 'event#index'
  get 'event/:time' => 'event#shows'
  post 'event/edit' => 'event#edit'
  devise_for :users
  root 'pin_posts#index'

  resources :pin_posts
end
