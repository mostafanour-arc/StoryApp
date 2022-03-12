# frozen_string_literal: true

Rails.application.routes.draw do

  resources :stories do
    collection do
      get :top
    end
  end
  resources :users do
    resources :stories 
      resources :reviews
  end
end
