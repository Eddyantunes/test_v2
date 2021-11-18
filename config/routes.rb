Rails.application.routes.draw do
  resources :create_notifications
  resources :notifications
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
