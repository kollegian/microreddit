class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def create
    @user=User.new(params.require(:user).permit(:name, :username, :email))
    @user.save
    redirect_to users_path
  end
  def index
    @users=User.all
  end
  def show
    @user=User.find(params[:id])
  end
end
