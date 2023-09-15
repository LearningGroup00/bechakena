class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    find_params
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to category_url(@category)
    else 
      render new 
    end 
  end

  def edit
    find_params
  end

  def update

  end

  def destroy
    @category.delete
  end

  private 
    def category_params
      params.require(:category).permit(:name, :category_id)
    end

    def find_params 
      @category = Category.find(params[:id])
    end 
end
