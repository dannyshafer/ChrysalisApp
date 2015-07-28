Rails.application.routes.draw do

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#show'

  get '/signup', to: 'sessions#signup'
  post '/signup', to: 'users#create'

  get '/logout', to: 'sessions#logout'

  resources :users do
    resources :baskets
  end

  resources :funds

  root 'welcome#index'

end
