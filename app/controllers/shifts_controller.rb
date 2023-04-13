class ShiftsController < ApplicationController
  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
     redirect_to shifts_path, notice: 'シフトを登録しました。'
    else
      render :new
    end
  end

  def index
    @shifts = Shift.all
  end

  def show
    @shift = Shift.find(params[:id])
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    @shift = Shift.find(params[:id])  
    if @shift.update(shift_params)
      redirect_to shifts_path, notice: 'シフトを更新しました。'
    else
      render :edit
    end
  end

  def destroy
    @shift = Shift.find(params[:id])
    @shift.destroy
    redirect_to shifts_path
  end

  private
  def shift_params
    params.require(:shift).permit(:start_time, :end_time, :user_id)
  end
end
