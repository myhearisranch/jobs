class Attendance < ApplicationRecord
    belongs_to :user

    # 今日出席したかどうかというメソッド
    def today_attendance
        Attendance.where(created_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day, user_id: id).first
    end
end
