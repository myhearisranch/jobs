class JobsController < ApplicationController

    def index
        @attendances = Attendance.all
    end

    def create
        @attendance = current_user.today_attendance
        # 出席したかどうかという情報が入る
        is_clocked_in = clock_in?(@attendance)

        # 退席したかどうかという情報が入る
        is_clocked_out = clock_out?(@attendance)
       
        if !is_clocked_in && !is_clocked_out
            @attendance = current_user.attendances.build(clock_in_at: Time.zone.now)
            flash[:success] = "出勤しました! おはようございます！"
        elsif is_clocked_in && !is_clocked_out
            @attendance.clock_out_at = Time.zone.now
            flash[:success] = "退勤しました! お疲れ様です!"
        end
        @attendance.save
        redirect_to jobs_path
    end
end
