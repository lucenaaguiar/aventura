class HomeController < ApplicationController
  def index
    @tours = Tour.all
    flash[:error] = 'Nenhum passeio cadastrado.' if @tours.empty?
  end
end
