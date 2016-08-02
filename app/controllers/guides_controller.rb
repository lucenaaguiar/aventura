class GuidesController < ApplicationController
  def new
    @guide = Guide.new
  end

  def create
    @guide = Guide.new(params.require(:guide).permit(:name, :location,
                                                     :phone, :email))
    if @guide.save
      flash[:notice] = 'Guia cadastrado com sucesso.'
      redirect_to @guide
    else
      flash[:error] = 'Erro ao cadastrar guia.'
      render 'new'
    end
  end

  def show
    @guide = Guide.find(params[:id])
  end
end
