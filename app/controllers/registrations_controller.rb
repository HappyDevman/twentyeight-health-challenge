class RegistrationsController < Devise::RegistrationsController

  def new
    build_resource
    resource.build_product
    # @states = STATES
    yield resource if block_given?
    respond_with resource
  end

  private

  def sign_up_params
    params.require(:patient).permit(:email, :password, :password_confirmation, :full_name, :birth_date, :state,
                                    product_attributes: %i[name category ndc qty price instructions])
  end
end
