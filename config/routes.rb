Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  get "up" => "rails/health#show", as: :rails_health_check

  resources :profiles, only: [ :new, :create, :edit, :update, :show ]
  root "home#index"
end
