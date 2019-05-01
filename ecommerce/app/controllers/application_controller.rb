class ApplicationController < ActionController::Base
     # check_authorization
     rescue_from CanCan::AccessDenied do |exception|
          redirect_to root_url, :alert => exception.message
        end
     before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password,
               :password_confirmation, :remember_me, :avatar) }
          devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password,
               :password_confirmation, :current_password, :avatar) }
     end

end
