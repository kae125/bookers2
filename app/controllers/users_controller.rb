class UsersController < ApplicationController
  def new
  end
  
  def index
  end
  
  def show
  end
  
  def edit
  end
  
  private
  def user_params
    params.require(:user).permit(:title, :body, :image) 
  end
end
