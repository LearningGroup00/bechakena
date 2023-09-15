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
    @category = Category.new(name: params[:category][:name], category_id: params[:category][:category_id])

    if @category.save 
      redirect_to category_path
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
  end

  private 
    def find_params 
      @category = Category.find(params[:id])
    end 
end
