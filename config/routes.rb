Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :analyses, only: [:create, :index]

  root 'static_pages#index'

  get '/auth/twitter/callback', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  resources :searches, only: [:index, :show, :create, :update]


 post '/results', to: "searches#search_results"
 get '/results', to: "searches#search_results_display"
end
