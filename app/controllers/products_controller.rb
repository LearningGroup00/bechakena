class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    find_params
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to product_url(@product)
    else 
      render new 
    end 
  end

  def edit
    find_params
  end

  def update
    find_params 
    if @product.update(product_params)
      redirect_to product_url(@product)
    else 
      render :edit
    end 
  end

  def destroy
    find_params 
    if @product.destroy 
      redirect_to products_path, status: :see_other
    else
      redirect_to :show
    end 
  end

  private 
    def product_params
      params.require(:product).permit(:name, :description, :price, :category_id)
    end

    def find_params 
      @product = Product.find(params[:id])
    end 
end
