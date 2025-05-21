Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :cars, only: [:index, :show, :new, :create] do
    post 'favorite', on: :member
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :update, :show]
end
