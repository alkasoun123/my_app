class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_filter :configure_devise_permitted_parameters, if: :devise_controller?
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource_or_scope)
  	#ssputs "&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    @currentUser = current_user.id
 	  '/users/'+@currentUser.to_s
  end

  #  def after_sign_up_path_for(resource)
  #   puts "@@@@@@@@@@@@@@@@@@@@@@@@@@"
  #   redirect_to new_startup_path
  # end
  protected

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email, :password, :password_confirmation, :images])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation, :current_password, :images])
  end
end