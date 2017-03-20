Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'visitor#index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/teams/:slug', to: "teams#show", as: :team

  resources :users, only: [:new, :create, :show]

  # resources :teams, only: [:index, :show]
  resources :teams, only: [:index], param: :slug

  resources :coaches, only: [:index]

  resources :players, only: [:index, :show]

  # get ':slug' => "teams#show", :as => "team"
end
