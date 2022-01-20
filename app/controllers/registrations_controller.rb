class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :adress, :zip_code, :city, :country, :merchant, :compagny_name, :vat_number, :kbis, :siret)
    end
end
