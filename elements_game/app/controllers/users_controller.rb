class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def login
    @user = User.find_by(username: params[:username])
    render json: {
      user: @user,
      scores: @user.scores
    }
  end

  def create
    user = User.create(user_params)
    render json: {
      user: user,
      scores: []
    }
  end

  private

  def user_params
    params.permit(:username, :first_name, :last_name)
  end

end
