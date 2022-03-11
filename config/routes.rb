Rails.application.routes.draw do
  get '/trending', to:'stories#top_stories'
  resources :users do
    resources :stories
  end
end
