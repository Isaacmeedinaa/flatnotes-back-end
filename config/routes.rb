Rails.application.routes.draw do
  resources :users
  resources :logins
  post '/login', to: 'logins#create'
  post '/register', to: 'users#create'
  resources :notes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
