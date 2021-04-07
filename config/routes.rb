Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/series", to: "series#index"
  get "/episodes", to: "episodes#index"
  get "/breakingbad", to: "breaking_bad#index"
  get "/bettercallsaul", to: "better_call_saul#index"
  root 'series#index', as: 'home'
end
