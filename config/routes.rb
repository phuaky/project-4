Rails.application.routes.draw do

  get '/' => 'main#home' #Landing page (public) DONE

  resources :user_profiles

  match '*path', to: redirect('/'), via: :all
end
