Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'visitor#index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/dashboard', to: "users#show"
  post '/dashboard', to: "users#show"

#   namespace :admin do
#     get '/dashboard', to: "users#show"
# end

  resources :users, only: [:new, :create, :show]

  resources :teams, only: [:index], param: :slug

  resources :coaches, only: [:new, :create, :index, :edit], param: :slug

  resources :players, only: [:index, :show, :edit, :update], param: :slug

  get '/teams/:slug', to: "teams#show", as: :team
  # get '/players/:slug', to: "players#show", as: :player
  get '/coaches/:slug', to: "coaches#show", as: :coach
end
