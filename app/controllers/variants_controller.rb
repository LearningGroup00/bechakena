class VariantsController < ApplicationController
  
  def new 
    @product = Product.find(params[:product_id])
    @variant = @product.variants.new
  end 
  
  def create
      @product = Product.find(params[:product_id])
      @variant = @product.variants.create(variant_params)
      redirect_to product_path(@product)
  end

  def edit 
    @product = Product.find(params[:product_id])
    @variant = variant
  end 
  
    private
      def variant_params
        params.require(:variant).permit(:color, :size, :sku, :product_id)
      end
end
