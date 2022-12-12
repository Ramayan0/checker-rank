Rails.application.routes.draw do
  post 'register', to: 'users#create'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'me', to: 'users#show'
  get 'allassessments', to: 'statistics#assessments'
  get 'allstudents', to: 'statistics#students'
  get 'invites', to: 'statistics#inivites'

 

  get 'students', to: 'statistics#test'


  resources :assessments, only: [:create, :index, :show] 
  resources :users, only: [:index, :show]
  resources :invitations, only:[:index, :create, :show]
  resources :answers, only:[:index, :create, :show]
  resources :reviews, only:[:index, :create, :show]
  resources :reviews  do 
    resources :users, only: [:show, :index]
  end
end
