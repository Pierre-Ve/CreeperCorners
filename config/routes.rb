Rails.application.routes.draw do
  devise_for :users
  # root to: "builds#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/my_builds/:id/bookings", to: "bookings#list"
  # Defines the root path route ("/")
  root "builds#index"

  resources :builds, only:[:index, :show, :new, :create, :edit, :update, :destroy]do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only:[ :destroy, :index]
end
