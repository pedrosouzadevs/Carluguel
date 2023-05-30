Rails.application.routes.draw do
  devise_for :users
  get "my_cars", to: "cars#user_cars", as: :my_car_index_cars
  get "my_rentals", to: "cars#user_rentals", as: :my_rental_index_cars
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars do
    resources :rentals, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
end
