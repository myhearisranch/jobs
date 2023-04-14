class FavoritesController < ApplicationController

  def create
    attendance = Attendance.find(params[:job_id])
    favorite = current_user.favorites.new(attendance_id: attendance.id)
    favorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy 
    attendance = Attendance.find(params[:job_id])
    favorite = current_user.favorites.find_by(attendance_id: attendance.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end


end
