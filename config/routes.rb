# frozen_string_literal: true

Rails.application.routes.draw do
  resources :stories,  only: %i[index create] do
    resources :reviews, only: %i[index create]
    collection do
      get :top
    end
  end
  
  resources :users, only: %i[index create show]
end
