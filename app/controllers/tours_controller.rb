class ToursController < ApplicationController
  before_action :authenticate_guide!, only: [:new, :create]

  def new
    @tour = Tour.new
    @categories = Category.all
    @locations = Location.all
  end

  def create
    @tour = current_guide.tour.new(tour_params)
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

  def search
    @tours = Tour.where(category_id: params[:categories])
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :location_id, :picture, :category_id,
                                 :guide, :contact, :duration,
                                 :amount, :description)
  end
end
