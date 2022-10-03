Rails.application.routes.draw do
  #REST routes
  resources :movies, only: [:index, :show]
  resources :directors, only: [:index, :show]
  resources :reviews, only: [:index]

  #custom routes
  get '/movies/:id/summary', to: 'movies#summary'
  get '/movie_summaries', to: 'movies#summaries'

end
