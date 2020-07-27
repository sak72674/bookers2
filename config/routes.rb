Rails.application.routes.draw do
  root 'users#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:create, :index, :show, :edit]
  resources :users, only: [:show]
end
