class CartPrintsController < ApplicationController
  def create
    picture = Picture.find(params[:print_id])
    product = Product.find(params[:product][:id])
    @cart.add_picture(picture.id, product.id)
    session[:cart] = @cart.pictures
    flash[:notice] = "Added #{picture.name} - #{product.medium} - #{product.size} to cart"
    redirect_to :back
  end
end
