class FavoritesController < ApplicationController
  def create
    camp = Camp.find(params[:camp_id])
    favorite = current_user.favorites.new(camp_id: camp.id)
    favorite.save
    redirect_to camp_path(camp)
  end

  def destroy
    camp = Camp.find(params[:camp_id])
    favorite = current_user.favorites.find_by(camp_id: camp.id)
    favorite.destroy
    redirect_to camp_path(camp)
  end
  
end
