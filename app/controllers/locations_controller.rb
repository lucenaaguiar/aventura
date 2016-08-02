class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params.require(:location).permit(:state, :city))
    if @location.save
      flash[:notice] = 'Localidade cadastrada com sucesso.'
      redirect_to @location
    else
      flash[:error] = 'Não foi possível cadastrar a localidade.'
      render 'new'
    end
  end

  def show
    @location = Location.find(params[:id])
  end
end
