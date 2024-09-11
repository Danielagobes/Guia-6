Rails.application.routes.draw do
  resources :est
  resources :buys
  root "est#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
