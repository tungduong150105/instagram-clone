Rails.application.routes.draw do
  devise_for :accounts

  # Dashboard
  get '/dashboard' => 'accounts#index'
  get '/profile/:username' => 'accounts#profile', as: :profile
  get 'post/like/:post_id' => 'likes#save_like', as: :like_post

  resources :posts, only: %i[new create show]
  root to: 'public#homepage'
end
