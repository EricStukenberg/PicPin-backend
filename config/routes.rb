Rails.application.routes.draw do
  resources :items
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'

  post 'search_terms/search', to: 'search_terms#search'
  get 'search_terms/random', to: 'search_terms#random'


  resources :search_terms



end
 