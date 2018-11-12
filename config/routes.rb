Rails.application.routes.draw do
  devise_for :users
  root to: 'officespaces#index'
  resources :officespaces do
    resources :reservations, only: [:new, :create]
  end
  get 'profile', to: 'pages#profile'
  resources :reservations, only: [:delete]
end
# branching test
