Rails.application.routes.draw do
  root 'dashboard#index'

  get '/dashboard', to: 'dashboard#index'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: "users/passwords" }
  devise_scope :user do
    delete  'logout', to: 'devise/sessions#destroy'
    get     'logout', to: 'devise/sessions#destroy'
  end
end
