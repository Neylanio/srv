Rails.application.routes.draw do
  resources :logins
  resources :servers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
