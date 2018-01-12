Rails.application.routes.draw do

  root to: 'games#home'
  get '/arena' , to: "games#show", as: "arena"
end
