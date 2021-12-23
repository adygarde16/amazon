class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	require 'date'
	
	protected

	def configure_permitted_parameters

	added_attrs = [:first_name, :last_name, :mobile_number, :address, :pincode, :username, :email, :password, :password_confirmation, :dob, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
		
	end

    def age(dob)
    now = Time.now.utc.to_date
    snow.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
end
