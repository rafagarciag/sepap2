class ApplicationController < ActionController::Base
  protect_from_forgery
    def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.teacher?
      flash[:alert] = "Ocupas ser maestro para entrar"
      redirect_to root_path
    end
  end
end
