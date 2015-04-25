Rails.application.routes.draw do
  root 'delatations#index'

  resources :delatations, only: [:index, :create]
end
