Rails.application.routes.draw do
  devise_for :users
  root to: 'office_spaces#index'
  resources :office_spaces do
    resources :reservations, only: [:new, :create]
  end
  get 'profile', to: 'pages#profile'
  resources :reservations, only: [:delete, :index]
end
