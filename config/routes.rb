Rails.application.routes.draw do
  root 'home#index'

  resources :delatations, only: [:create]
end
