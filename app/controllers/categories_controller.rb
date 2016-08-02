class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name))
    if @category.save
      redirect_to @category
    else
      flash.now[:notice] = 'Não foi possível cadastrar a categoria.'
      render :new
    end
  end

  def show
    @category = Category.find(params[:id])
  end
end
