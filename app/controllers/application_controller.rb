class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user


  def admin_authenticate
    if current_user.role == 0
      redirect_to admin_dashboard_path
    else
      redirect_to dashboard_path
    end
  end

  def current_user
    if @current_user
      @current_user
    elsif session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      nil
    end
  end
end
