class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @camps = @user.camps    
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id) 
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :area, :level, :introduction)
  end
end