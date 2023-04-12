class ApplicationController < ActionController::Base
    before_action :authenticate_user!,except: [:top, :about]
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        jobs_path
    end


    def clock_in?(attendance)
        return false if attendance.nil?
        !attendance.clock_in_at.nil?
    end

    def clock_out?(attendance)
        return false if attendance.nil?
        !attendance.clock_out_at.nil?
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    end

end
