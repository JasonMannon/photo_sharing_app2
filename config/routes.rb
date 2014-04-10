Photoload::Application.routes.draw do
  resources :photos

  root :to => 'users#index'
  get "sessions/new"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'myaccount/:id', to: 'users#show', as: 'myaccount'
  get 'new_upload', to: 'photos#new', as: "new_upload"
  get 'photo/:id', to: 'photos#show', as: 'viewphoto'
  resources :users
  resources :sessions
  resources :tags
end
