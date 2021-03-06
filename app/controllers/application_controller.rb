class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      attributes = [:email, :password, :town_id, :address, :phone, :account_type_id, :name, :seller_title]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end

    def authenticate_admin!
      authenticate_user!
      redirect_to :controller => 'searches', :action => 'new' unless current_user.admin?
    end
end
