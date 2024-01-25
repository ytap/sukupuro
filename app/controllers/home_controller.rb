class HomeController < ApplicationController

  def index
    @zemi = Zemi.all
  end

  def show
    @zemi = Zemi.find(params[:id])
  end
end
