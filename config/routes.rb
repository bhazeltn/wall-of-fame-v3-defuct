Rails.application.routes.draw do
  resources :records
  resources :levels
  resources :competitions
  resources :skaters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#home"
end
