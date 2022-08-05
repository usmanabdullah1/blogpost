class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password,:user_name)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password,:user_name)}
          end
end
