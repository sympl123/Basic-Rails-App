class FavoritesController < ApplicationController
     def create
     @post = Post.find(params[:post_id])
     favorite = current_user.favorites.build(post: @post)
     authorize @favorite 

     if favorite.save
        flash[:notice] = "Favorited."
        redirect_to [@post.topic, @post]
       # Add code to generate a success flash and redirect to @post
       # Remember the path shortcut: [@post.topic, @post]
     else
       flash[:error] = "There was an error saving the comment. Please try again."
       redirect_to [@post.topic, @post] 
     end
   end

     def destroy
      @topic = Topic.find(params[:topic_id])
      @post = @topic.posts.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @favorite = @comment.favorites.find(params[:id])
      
      authorize @favorite
   # Get the post from the params
   # Find the current user's favorite with the ID in the params
 
   if favorite.destroy
     flash[:notice] = "Favorite was removed."
     redirect_to [@post.topic, @post] 
   else
     flash[:error] = "Favorite couldn't be deleted. Try again."
     redirect_to [@post.topic, @post] 
   end

 end
end
