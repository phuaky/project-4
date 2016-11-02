Rails.application.routes.draw do

  get 'invoices/new'

  get 'invoices/create'

  get 'invoices/show'

  get 'invoices/index'

  get 'invoices/destroy'

  get 'invoices/update'

  root 'main#home'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  resources :user_profiles
  resources :charges
  resources :stalls
  resources :recorded_trades
  resources :all_seafood_stocks
  resources :carts
  resources :customers
  resources :purchases

  match '*path', to: redirect('/'), via: :all ##Any error page will redirect to root
end
