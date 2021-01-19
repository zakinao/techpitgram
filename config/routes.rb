Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users, only: [:show]
  resources :photos
  resources :posts
end
