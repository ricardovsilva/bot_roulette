Rails.application.routes.draw do
  root to: 'entries#index'

  resources :entries
  get '/roulette', to: 'roullete#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
