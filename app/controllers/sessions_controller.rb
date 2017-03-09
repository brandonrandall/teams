class SessionsController < ApplicationController

  def new
    #why do i need to define new if i dont have to create a user here
    # @session = Session.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(current_user)
    else
      redirect_to login_path
    end
  end

  def show
    @user = current_user
  end
end
  #
  # def destroy
  #   session.clear
  #   redirect_to root_path
  # end
