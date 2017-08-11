Rails.application.routes.draw do
  resources :user_servers
  resources :servers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
