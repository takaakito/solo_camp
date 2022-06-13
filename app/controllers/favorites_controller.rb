class FavoritesController < ApplicationController
  def create
    @camp = Camp.find(params[:camp_id])
    favorite = @camp.favorites.new(user_id: current_user.id)
    favorite.save
  end

  def destroy
    @camp = Camp.find(params[:camp_id])
    favorite = @camp.favorites.find_by(user_id: current_user.id)
    favorite.destroy
  end
  
  private
  
end
