Rails.application.routes.draw do
  resources :entries
  get '/roulette', to: 'roullete#index'
end
