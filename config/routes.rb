Rails.application.routes.draw do
  root 'pages#index'
  resources 'users'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

end
