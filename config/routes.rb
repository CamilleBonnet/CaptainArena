Rails.application.routes.draw do
  root to: 'games#home'

  mount Attachinary::Engine => "/attachinary"

  get '/arena' , to: "games#show", as: "arena"

  resources :captains, except: [:index]
end
