class ApplicationController < ActionController::Base
  impersonates :user
  include Pundit

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :matric_number, :level])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :matric_number, :level])
    end
end
