Rails.application.routes.draw do
  root 'dashboard#index'

  get '/dashboard', to: 'dashboard#index'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
end
