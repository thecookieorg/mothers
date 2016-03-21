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
    params.require(:user).permit(:name, :address, :company, :phone, :email, :password, :password_confirmation, :current_password, :credit_cards_info, :bank_accounts_info, :leases_info, :loans_info)
  end

  def account_update_params
    params.require(:user).permit(:name, :address, :company, :phone, :email, :password, :password_confirmation, :current_password, :credit_cards_info, :bank_accounts_info, :leases_info, :loans_info)
  end
  
  
end