# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :users do
    resources :articles
  end

  root 'welcome#index'
end
