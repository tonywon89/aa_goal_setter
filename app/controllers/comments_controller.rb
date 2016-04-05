class CommentsController < ApplicationController

  def new

  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to root_url
    else
      render :new
    end

  end


  def comment_params
    params.require(:comment).permit(:body, :commentable_type, :commentable_id)
  end
end
