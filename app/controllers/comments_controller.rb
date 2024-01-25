class CommentsController < ApplicationController
  def create
    @zemi = Zemi.find(params[:zemi_id])
    @comment = @zemi.comments.create(comment_params)
    redirect_to zemi_path(@zemi)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
