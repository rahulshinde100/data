class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
  		params.require(:user).permit(:fname,:lname ,:email,:password,:password_confirmation  ,:birthdate,:gender,:country , :image)

  end

  def account_update_params
  	params.require(:user).permit(:fname,:lname ,:email,:password,:password_confirmation ,:current_password  ,:birthdate,:gender,:country , :image)	
  end
end