class User < ApplicationRecord
  has_many :attendances
  has_many :favorites, dependent: :destroy 
  has_many :entries
  has_many :direct_messages
  has_many :rooms, through: :entries
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # 今日出席したかどうかというメソッド
  def today_attendance
    Attendance.where(created_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day, user_id: id).first
  end
      
end
    