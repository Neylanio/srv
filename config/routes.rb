Rails.application.routes.draw do
  resources :logins
  resources :servers
  resources :users
  resources :user_sessions, only: [:create, :new, :destroy]

  root 'user_sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
