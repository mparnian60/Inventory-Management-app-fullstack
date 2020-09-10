Rails.application.routes.draw do

  namespace :api do
    resources :users, except: [:show] #show router is not in routes anymore
    resources :products

    get 'auth/status', to: 'auth#status'
    post 'auth/login', to: 'auth#login'

    # get 'products/:product_code', to: 'products#details'
  end

  #catch all for anything that doesn't matched above
  get '*path', to: 'react#react_app', format: false

end
