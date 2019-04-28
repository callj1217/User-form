Rails.application.routes.draw do
  root to: "sessions#new"
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :pets
  resources :users
  resources :cars
  
end
