class FoodFavoritesController < ApplicationController
   def create
    @food = Food.find(params[:food_id])
    favorite = current_user.food_favorites.new(food_id: @food.id)
    favorite.save
   end

  def destroy
    @food = Food.find(params[:food_id])
    favorite = current_user.food_favorites.find_by(food_id: @food.id)
    favorite.destroy
  end
end
