Rails.application.routes.draw do
  root controller: :articles, action: :index
  
  namespace :journalists do
    resources :articles, only: [:show, :create]
  end

  resources :articles, only: [:show]
end