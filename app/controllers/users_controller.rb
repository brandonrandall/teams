class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # reiterate sessions
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end

    def show
      # @user = User.find(params[:id])
      @user = current_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
