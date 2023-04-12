class JobsController < ApplicationController

    def index
        @attendances = Attendance.where(created_at: Time.zone.now.all_day)
        @attendance = current_user.attendances
        last_attendance = current_user.today_attendance
        @is_clocked_in = clock_in?(last_attendance)
        @is_clocked_out = clock_out?(last_attendance)
    end

    def create
        @attendance = current_user.today_attendance
        # 出席したかどうかという情報が入る
        is_clocked_in = clock_in?(@attendance)
        
        # 退席したかどうかという情報が入る
        is_clocked_out = clock_out?(@attendance)
        if !is_clocked_in && !is_clocked_out
            @attendance = current_user.attendances.build(clock_in_at: Time.zone.now)
            flash[:success] = "部活に参加しました。"
        elsif is_clocked_in && !is_clocked_out
            @attendance.clock_out_at = Time.zone.now
            flash[:success] = "部活を終えました。"
        end
        @attendance.save
        redirect_to jobs_path
    end

end
