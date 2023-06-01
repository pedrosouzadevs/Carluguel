Rails.application.routes.draw do
  root to: "cars#index"
  devise_for :users
  resources :users, only: %i[show]
  get "users/:user_id/my_rentals", to: "users#show_rentals", as: :my_rentals

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars do
    resources :rentals, only: %i[new create show update]
    resources :reviews, only: %i[new create]
  end
end
