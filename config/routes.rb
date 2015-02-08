Rails.application.routes.draw do
  
  root 'users#new'

  get '/signup' => 'users#new', as: :signup

  resources :users
  resources :cars

end
