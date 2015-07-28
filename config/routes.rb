Rails.application.routes.draw do

  post '/login', to: 'sessions#login'

  get '/signup', to: 'sessions#signup'
  post '/signup', to: 'users#create'

  get '/logout', to: 'sessions#logout'

  resources :users do
    resources :baskets
  end

  resources :funds

  root 'welcome#index'

end
