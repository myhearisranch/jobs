class ShiftsController < ApplicationController
  # スケジュールの新規作成画面を表示する
  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
     #redirect_to shifts_path,  notice: "スケジュールを作成しました。"
    else
      render :new
    end
  end

  def index
    @shifts = Shift.all
  end

  

  private
  def shift_params
    params.require(:shift).permit(:start_time, :end_time, :user_id)
  end

 
end
