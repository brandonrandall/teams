Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'visitor#index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/teams/:slug', to: "teams#show", as: :team
  get '/coaches/:slug', to: "coaches#show", as: :coach
  get '/players/:slug', to: "players#show", as: :player

  resources :users, only: [:new, :create, :show]

  resources :teams, only: [:index], param: :slug

  resources :coaches, only: [:index], param: :slug

  resources :players, only: [:index], param: :slug

end
