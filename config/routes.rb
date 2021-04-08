Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/series", to: "series#index"
  get "/episodes", to: "episodes#index"
  resources :breaking_bad, only: [:index, :show]
  resources :better_call_saul, only: [:index, :show]
  root 'series#index', as: 'home'
end
