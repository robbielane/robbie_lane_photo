class ProductsController < ApplicationController
  before_action :authenticate!

  def index
    @product = Product.new
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Successfully created #{@product.medium} - #{@product.size}"
      redirect_to products_path
    else
      flash.now[:error] = "Something went wrong :/"
      render :index
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Successfully updated #{@product.medium} - #{@product.size}"
      redirect_to products_path
    else
      flash.now[:error] = "Something went wrong :/"
      render :index
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:medium, :size, :price)
  end
end
