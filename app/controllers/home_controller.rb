class HomeController < ApplicationController
  def index
    @tours = Tour.all
    @categories = Category.all
    flash.now[:error] = 'Nenhum passeio cadastrado.' if @tours.empty?
  end
end
