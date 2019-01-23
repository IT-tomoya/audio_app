Rails.application.routes.draw do
  resources :audio_posts
  resources :audio_posts
  root 'audio_posts#index'
end
