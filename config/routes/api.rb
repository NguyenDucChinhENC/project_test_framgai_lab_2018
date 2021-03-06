require "api_constraints"
  namespace :api, defaults: {format: "json"} do
  	resources :users, only: [:show, :destroy]
    devise_scope :user do
        post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
        delete "sign_out", to: "sessions#destroy"
    end
end