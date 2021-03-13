class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  # Define the authenticate_user method
  def authenticate_user
    if @current_user == nil
      flash[:notice] = "You must be logged in"
      redirect_to("/login")
    end
  end
end
