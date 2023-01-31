Rails.application.routes.draw do
  root "users#feed"

  devise_for :users
  
  resources :comments, except: :index
  resources :follow_requests, except: :index
  resources :likes, except: :index
  resources :photos, except: :index

  get ":username" => "users#show", as: :user
  get ":username/liked" => "users#liked", as: :liked
  get ":username/feed" => "users#feed", as: :feed
  get ":username/discover" => "users#discover", as: :discover
end
