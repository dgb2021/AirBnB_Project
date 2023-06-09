Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :flats, only: [:index, :show, :new, :create, :edit, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy]
  resources :users, only: [:new, :create, :show]

end

