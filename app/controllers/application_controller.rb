class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


before_action :authenticate_user!
  protect_from_forgery prepend: true, with: :exception



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :venmo_username])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:username, :venmo_username])
  end





end
