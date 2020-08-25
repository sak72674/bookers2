class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters,if: :devise_controller?

	protected

    def after_sign_in_path_for(resource)
    	user_path(current_user.id)
    end

    def after_sign_out_for(resource)
    	root_path
    end

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
	end
	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :email, :postcode, :prefecture_code, :address_city, :address_street, :address_building])
    end
end
