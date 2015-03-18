class CommentsController < ApplicationController
    def create
        @comment = Comment.new(params[:comment])
            redirect_to(@comment.post)
    end
end