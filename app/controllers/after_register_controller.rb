class AfterRegisterController < Wicked::WizardController
    before_action :authenticate_user!
    
    steps :company_info
    
    def show
        @user = current_user
        render_wizard
    end
    
    def update
        @user = current_user
        @user.update_attributes(sign_up_params)
        render_wizard @user
    end
    
     private

      def sign_up_params
        params.require(:user).permit(:name, :address, :company, :phone, :email, :password, :password_confirmation, :current_password)
      end
    
      def account_update_params
        params.require(:user).permit(:name, :address, :company, :phone, :email, :password, :password_confirmation, :current_password)
      end
end