Rails.application.routes.draw do
  get '/current-user', to: 'current_user#index'
  
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/trending-coins', to: 'coins#fetch_trending_coins'
  get '/coin-list', to: 'coins#listed_coins'
  get '/articles', to: 'articles#index'
  get '/coin/:id', to: 'coins#find_specific_coin'
  get '/history', to: 'coins#retrieve_historical_data'
end
