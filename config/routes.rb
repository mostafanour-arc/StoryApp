# frozen_string_literal: true

Rails.application.routes.draw do

  
  resources :stories, :only => [] do
    collection do
      get :top
    end
  end
  resources :users, :only => [:index, :create, :show] do
    resources :stories, :only => [:index, :create] do
      resources :reviews, :only => [:index, :create]
    end
  end
end
