Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get 'main', to: 'profil#index'

  get 'transaction', to: 'transactions#index'
  get 'create_transaction', to: 'transactions#new'
  post 'transaction', to: 'transactions#create'

  delete "log_out", to: "sessions#destroy"
  root to: "sessions#new"
end
