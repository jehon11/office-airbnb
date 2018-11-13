Rails.application.routes.draw do
  devise_for :users
  root to: 'office_spaces#index'
  resources :office_spaces do
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  get 'my_reservations', to: 'pages#my_reservations', as: :my_reservations
  get 'my_offices', to: 'pages#my_offices', as: :my_offices

  resources :reservations, only: [:delete, :index]
end
