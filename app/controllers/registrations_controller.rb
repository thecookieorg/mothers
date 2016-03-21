class RegistrationsController < Devise::RegistrationsController

  def create
    super
  end

  protected
  
  def after_sign_up_path_for(resource)
    after_register_path(:company_info)
  end
  
  
  private

  def sign_up_params
    params.require(:user).permit(:name, :address, :company, :phone, :email, :password, :password_confirmation, :current_password)
  end

  def account_update_params
    params.require(:user).permit(:name, :address, :company, :phone, :email, :password, :password_confirmation, :current_password)
  end
  
  
end