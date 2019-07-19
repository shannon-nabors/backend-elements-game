class AuthController < ApplicationController

  def create
  # byebug
  @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
     #username is found AND password matches
     payload = {user_id: @user.id}
     token = encode(payload)
     render json: {
       message: "Authenticated! You are logged in",
       authenticated: true,
       # user: @user.user_items_serializer,
       token: token
     }, status: :accepted
   else
     #username could not be found OR password is incorrect
     render json: {
       message: "WRONG! Are you a hacker??",
       authenticated: false
     }, status: :not_acceptable
   end
  end

end
