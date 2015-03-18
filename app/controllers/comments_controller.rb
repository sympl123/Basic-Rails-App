class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params.require(:comment).permit(:title, :body))
     raise # this will short-circuit the method
    if @comment.save
      flash[:notice] = "Comment was saved."
      redirect_to @comment
    else
      flash[:error] = "There was an error saving the comment. Please try again."
      render :new
    end
  end

    def new 
      @comment = Comment.new 
end