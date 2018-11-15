Rails.application.routes.draw do
  devise_for :users
  get 'office_spaces/search', to: 'office_spaces#search', as: :search
  root to: 'office_spaces#index'
  resources :office_spaces do
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  get 'my_offices', to: 'pages#my_offices', as: :my_offices
  resources :reservations
end
