Rails.application.routes.draw do
  root 'gossips#index'

  get '/new', to: 'gossips#new'
  get '/corsairs', to: 'corsairs#index'
  post 'corsairs', to: 'corsairs#create'

  resources :gossips, only: [:create, :destroy]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
