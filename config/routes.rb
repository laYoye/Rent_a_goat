Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "dashboards", to: "dashboards#bookings"
  get "dashboards", to: "dashboards#herds"
  resources :herds, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:destroy]
end
