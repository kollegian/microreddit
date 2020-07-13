class CommentsController < ApplicationController
  def create
    @post=Post.find(params[:post_id])
    @comment=@post.comments.create(params.require(:comment).permit(:text))
    @comment.save
    redirect_to post_path(@post)
  end  
end
