class PostsController < ApplicationController
  def show_all 
    @posts=Post.all
  end
  def create
    @user=User.find(params[:user_id])
    @post=@user.posts.create(params.require(:post).permit(:title, :text))
    @post.save
    redirect_to :root
  end
  def show
    @post=Post.find(params[:id])
  end
  def new
    @user=User.find(params[:user_id])
    @post=Post.new
  end
end
