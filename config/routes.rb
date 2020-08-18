Rails.application.routes.draw do
  get 'home/top'
  get 'home/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'

  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :index, :edit, :update]
end
