Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :trips, only: [:index, :new, :create, :show, :destroy] do
  #     # Nested the bookings now before the controller because the two routes are linked. A booking is created after trip.
    resources :bookings, only: [:index, :new, :create, :show, :destroy]
  end
end
