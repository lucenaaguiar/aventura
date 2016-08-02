class ToursController < ApplicationController
  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(params.require(:tour).permit(:title, :location, :category,
                                                  :guide, :contact, :duration,
                                                  :amount, :description))
    if @tour.save
      redirect_to @tour
    else
      flash.now[:error] = 'Não foi possível cadastra o passeio'
      render 'new'
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
