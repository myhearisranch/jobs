class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
      @attendances = @user.attendances
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to user_path(@user.id)
    end

    # 活動日のカレンダーを表示するメソッド
    def calender
      @users = User.all
      @activities = @users.where("day >= ?", Date.current).where("day < ?", Date.current >> 3).order(day: :desc)
    end

    private 

    def user_params
      params.require(:user).permit(:activity_monday,:activity_tuesday,:activity_wednesday,:activity_thursday,:activity_friday,:activity_saturday)
    end

end
