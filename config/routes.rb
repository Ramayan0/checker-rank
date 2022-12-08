Rails.application.routes.draw do
  post 'register', to: 'users#create'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'me', to: 'users#show'

  resources :assessments, only: [:create, :index]
  resources :users, only: [:index]
  resources :invitations, only:[:index, :create]
end
