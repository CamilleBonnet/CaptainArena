Rails.application.routes.draw do

  get 'captains/show'

  get 'captains/new'

  root to: 'games#home'
  get '/arena' , to: "games#show", as: "arena"

  resources :captains, except: [:index]
end
