# frozen_string_literal: true

Rails.application.routes.draw do
  root 'objectives#index'
  resources :objectives
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
