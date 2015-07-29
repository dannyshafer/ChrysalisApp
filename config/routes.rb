Rails.application.routes.draw do

  post '/login', to: 'sessions#login'

  get '/signup', to: 'sessions#signup'
  post '/signup', to: 'users#create'

  get '/logout', to: 'sessions#logout'

  post '/users/:user_id/baskets/:basket_id/add', to: 'baskets#add_fund'

  resources :users do
    resources :baskets
    resources :funds
  end


  root 'welcome#index'

end
