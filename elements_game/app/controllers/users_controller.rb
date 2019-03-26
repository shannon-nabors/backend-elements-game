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

end
