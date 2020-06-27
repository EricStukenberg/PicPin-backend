Rails.application.routes.draw do
  resources :search_terms
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  resources :users  post 'search_terms/search', to: 'search_terms#search'
  resources :search_terms
  resources :users



end
 