class CampsController < ApplicationController
  def new
    @camp = Camp.new
  end

  def index
    @camps = Camp.all
  end

  def show
    @camp = Camp.find(params[:id])
    @camp_comment = CampComment.new
  end
  
  def create
    @camp = Camp.new(camp_params)
    @camp.user_id = current_user.id
    @camp.save
    redirect_to camps_path
  end
  
  def destroy
    @camp = Camp.find(params[:id])
    @camp.destroy
    redirect_to camps_path
  end
  
  private
  
  
  def camp_params
    params.require(:camp).permit(:name, :camp_area, :category, :body, :image )
  end

end

