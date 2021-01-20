Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users, controllers: {registrations: 'registrations'}
  resources :users, only: [:show]
  resources :posts, only: [:new, :create, :index, :show, :destroy] do
    resources :photos, only: [:create]
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
