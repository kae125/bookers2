class UsersController < ApplicationController
  def new
  end
  
  def index
    @user = current_user
  end
  
  def show
    @book = Book.new
    @user = User.find(params[:id])
    if @user.save
      flash[:notice] = "WWelcome! You have signed up successfully."
      redirect_to user_path(@user.id)
    else
     @users = User.all
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image) 
  end
end
