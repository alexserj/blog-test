# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in

  resources :articles do
    resources :comments
  end

  resources :users do
    resources :articles
  end
  
  resources :user_sessions, only: [:create, :destroy]
end
