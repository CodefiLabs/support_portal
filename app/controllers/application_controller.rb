class ApplicationController < ActionController::Base

  before_action :configure_permitted_paramters, if: :devise_controller?

  protected
    def configure_permitted_paramters

        devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :phone, :role, :email, :company, :job_title])

        devise_parameter_sanitizer.permit(:invite, keys: [:first_name, :last_name, :phone, :role, :email, :company, :job_title])

    end

  
end
