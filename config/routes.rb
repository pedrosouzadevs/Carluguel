Rails.application.routes.draw do
  devise_for :users
  get "user/:user_id/my_cars", to: "users#car_index", as: :car_index_user
  get "user/:user_id/my_rentals", to: "users#rental_index", as: :rental_index_user
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars do
    resources :rentals, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
end
