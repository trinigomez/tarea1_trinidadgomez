Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/series", to: "series#index"
  get "/episodes", to: "episodes#index"
  #resources :breaking_bad, only: [:index, :show]
  get "/breaking_bad(/season/:season)", to: "breaking_bad#index", :as => 'breaking_bad_index'
  get "/breaking_bad/:id", to: "breaking_bad#show", :as => 'breaking_bad'
  
  resources :better_call_saul, only: [:show]
  get "/better_call_saul(/season/:season)", to: "better_call_saul#index", :as => 'better_call_saul_index'

  get "/characters/:name", to: "characters#show", :as => 'character'
  
  get "/search", to: "characters#search", :as => 'search'
  root 'series#index', as: 'home'
end
