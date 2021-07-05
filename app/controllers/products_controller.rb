class ProductsController < ApplicationController
  skip_before_action :authenticate_patient!, only: :change_state
  def change_state
    state = params[:state]
    products = PRODUCTS.filter { |product| !product[:banned_states]&.include?(state) }
    respond_to do |format|
      format.js { render :change_state, locals: { products: products }, layout: false }
    end
  end
end
