Rails.application.routes.draw do
  devise_for :users
  root to: 'entries#index'

  resources :entries
  get '/roulette', to: 'roullete#index'
end
