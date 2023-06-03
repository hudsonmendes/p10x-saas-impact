Rails.application.routes.draw do
  resources :okr_key_results
  resources :metrics
  resources :okrs
  resources :managers
  resources :domains
  resources :people
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
