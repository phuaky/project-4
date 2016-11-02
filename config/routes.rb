Rails.application.routes.draw do

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"

  # get 'recorded_trade/index'
  #
  # get 'recorded_trade/new'
  #
  # get 'recorded_trade/create'
  #
  # get 'recorded_trade/edit'
  #
  # get 'recorded_trade/show'
  #
  # get 'recorded_trade/update'
  #
  # get 'recorded_trade/destroy'
  #
  # get 'all_seafood_stock/index'
  #
  # get 'all_seafood_stock/new'
  #
  # get 'all_seafood_stock/create'
  #
  # get 'all_seafood_stock/edit'
  #
  # get 'all_seafood_stock/show'
  #
  # get 'all_seafood_stock/update'
  #
  # get 'all_seafood_stock/destroy'

  # root 'main#home'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  resources :user_profiles
  resources :charges
  resources :stalls
  resources :recorded_trades
  resources :all_seafood_stocks


  match '*path', to: redirect('/'), via: :all ##Any error page will redirect to root
end
