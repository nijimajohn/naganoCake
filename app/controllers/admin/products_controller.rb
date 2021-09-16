class Admin::ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to admin_products_path, notice: "You have created product successfully."
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end




  private

  def product_params
    params.require(:product).permit(:name)
  end
end
