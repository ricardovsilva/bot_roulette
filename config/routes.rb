Rails.application.routes.draw do
  root to: 'entry#index'

  resources :entries
  get '/roulette', to: 'roullete#index'
end
