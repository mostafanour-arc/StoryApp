Rails.application.routes.draw do
  get '/trending', to:'stories#top_stories'
  resources :users do
    resources :stories do
      resources :reviews
    end
  end
end
