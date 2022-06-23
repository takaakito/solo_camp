class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @camps = @user.camps
    @foods = @user.foods
    @plays = @user.plays
    @user_favorites = @user.favorites
    @user_food_favorites = @user.food_favorites
    @user_play_favorites = @user.play_favorites
    @camp_all_ranks = Camp.find(Favorite.group(:camp_id).order('count(camp_id) desc').limit(3).pluck(:camp_id))
    @camp_my_ranks = @camp_all_ranks.select{ |food| food.user_id == current_user.id }
    @food_all_ranks = Food.find(FoodFavorite.group(:food_id).order('count(food_id) desc').limit(3).pluck(:food_id))
    @food_my_ranks = @food_all_ranks.select{ |food| food.user_id == current_user.id }
    @play_all_ranks = Play.find(PlayFavorite.group(:play_id).order('count(play_id) desc').limit(3).pluck(:play_id))
    @play_my_ranks = @play_all_ranks.select{ |play| play.user_id == current_user.id }
    
    bookmarks = Favorite.where(user_id: current_user.id).pluck(:camp_id)
    @bookmark_list = Camp.find(bookmarks)
    
    food_bookmarks = FoodFavorite.where(user_id: current_user.id).pluck(:food_id)
    @food_bookmark_list = Food.find(food_bookmarks)
    
    play_bookmarks = PlayFavorite.where(user_id: current_user.id).pluck(:play_id)
    @play_bookmark_list = Play.find(play_bookmarks)
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