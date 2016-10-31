Rails.application.routes.draw do

  root 'main#home'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  resources :user_profiles
  resources :charges

  match '*path', to: redirect('/'), via: :all ##Any error page will redirect to root
end
