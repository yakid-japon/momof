Rails.application.routes.draw do
  root 'properties#index'
  resources :railways
  resources :properties
end
