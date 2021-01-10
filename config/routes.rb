Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :articles
  root 'users#show', as: 'users_show'
  root 'articles#index'
end
