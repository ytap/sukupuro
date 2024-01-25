class ZemisController < ApplicationController
  def show
    @zemi = Zemi.find(params[:id])
    @comments = @zemi.comments
    @new_comment = Comment.new
  end

  def index
    if params[:keyword].present?
      @zemis = Zemi.where("name LIKE ? OR abstract LIKE ? OR info LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%","%#{params[:keyword]}%")
    else
      @zemis = Zemi.all
    end
  end
end
