require "api_constraints"
	namespace :api, defaults: {format: "json"} do
	  devise_scope :user do
		end
end