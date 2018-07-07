module Api
  class RegistrationsController < Devise::RegistrationsController
    protect_from_forgery with: :null_session

    def create
      user = User.new user_params
      if user.save
        render json: {
          data: {user: user}
        }, status: 201
      else
        render json: {
          message: user.errors.messages,
          data: {}
        }, status: 422
      end
    end

    private

    def user_params
      params.require(:user).permit User::ATTRIBUTES_PARAMS
    end
  end
end
