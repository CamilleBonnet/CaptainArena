Rails.application.routes.draw do
  root to: 'games#home'

  mount Attachinary::Engine => "/attachinary"

  get '/arena' , to: "games#index", as: "arena"

  resources :captains, except: [:index]
  resources :games, except: [:index, :edit, :update]
end
