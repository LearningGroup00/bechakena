class CategoriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    render :new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      # redirect_to category_url(id: category.id)
      redirect_to category_url(@category)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # def category_params
  #   { name: params[:category][:name], category_id: params[:category][:category_id] }
  # end

  def category_params
    params.require(:category).permit(:name, :category_id)
  end
end

# params = { name: "value of name" }
# params[:name]

# params = { category: { name: "user passed value", category_id: 34 }}

# params[:category][:name]
