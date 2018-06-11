class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      @message = "The user #{@user.full_name} was created successfully"
      render json: { user: @user,  message: @message }, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:full_name, :team_id)
    end
end
