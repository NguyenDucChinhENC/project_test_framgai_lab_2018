class Api::UsersController < Api::BaseController
	before_action :find_object, only: [:show, :destroy]

	def show
		render json: {
			data: {user: @user}
		}, status: :ok
	end

	def destroy
		@user.destroy
		render json: {
			messenger: "destroy success"
		}, status: :ok
	end
end