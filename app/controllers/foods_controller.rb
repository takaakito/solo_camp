class FoodsController < ApplicationController
  def index
    @foods=Food.all
  end

  def new
    @food = Food.new
  end
  
  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id
    @food.save
    redirect_to foods_path
  end
  
  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  def show
    @food = Food.find(params[:id])
    @food_comment = FoodComment.new
  end
  
  private
  
  def food_params
    params.require(:food).permit(:camp_food, :food_level, :food_time, :food_introduction, :food_image)
  end
end
