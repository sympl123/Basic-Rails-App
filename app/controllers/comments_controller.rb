class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.post = @post 
    @new_comment = Comment.new 
    
    authorize @comment 
    if @comment.save
      flash[:notice] = "Comment was created."
      redirect_to @comment
    else
      flash[:error] = "There was an error saving the comment. Please try again."
      render :new
    end

    respond_with(@comment) do |format|
    format.html { redirect_to [@post.topic, @post] }
    end

  end

   def destroy
     @post = Post.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
 
     authorize @comment
     
     if @comment.destroy
       flash[:notice] = "Comment was removed."
       redirect_to [@topic, @post]
     else
       flash[:error] = "Comment couldn't be deleted. Try again."
       redirect_to [@topic, @post]
     end
   end

end
