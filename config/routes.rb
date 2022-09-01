Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users, only: :show do
  resources :profiles
  # end

  resources :trips, only: [:index, :show, :new, :create] do

    resources :bookings, only: [:index, :new, :create, :show, :destroy]
  end
  resources :trips, only: :destroy
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
