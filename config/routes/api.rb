require "api_constraints"
  namespace :api, defaults: {format: "json"} do
    devise_scope :user do
        post "sign_up", to: "registrations#create"
    end
end