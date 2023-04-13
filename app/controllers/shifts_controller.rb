class ShiftsController < ApplicationController
  # スケジュールの新規作成画面を表示する
  def new
    @shift = Shift.new
  end

 
end
