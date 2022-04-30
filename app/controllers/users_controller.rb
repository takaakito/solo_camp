class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @camps = @user.camps
    @foods = @user.foods
    @user_favorites = @user.favorites
    @camp_all_ranks = Camp.find(Favorite.group(:camp_id).order('count(camp_id) desc').limit(3).pluck(:camp_id))
    @camp_my_ranks = @camp_all_ranks.select{ |food| food.user_id == current_user.id }
    @food_all_ranks = Food.find(FoodFavorite.group(:food_id).order('count(food_id) desc').limit(3).pluck(:food_id))
    @food_my_ranks = @food_all_ranks.select{ |food| food.user_id == current_user.id }
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