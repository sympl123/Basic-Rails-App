class CommentsController < ApplicationController

  def new 
      @comment = Comment.new 
  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:body))
     
    if @comment.save
      flash[:notice] = "Comment was saved."
      redirect_to @comment
    else
      flash[:error] = "There was an error saving the comment. Please try again."
      render :new
  end

end
