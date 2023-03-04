class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token, if: :devise_controller?
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    protected
     def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :phone)}
        #   devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email_or_phone, :password) }
          devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password, :phone)}
     end
end
