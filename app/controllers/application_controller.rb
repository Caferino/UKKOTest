class ApplicationController < ActionController::Base

    before_action :check_session

    private
      
    def check_session
        return if session[:user_id].present?

        redirect_to users_index_path, alert: "Please, log in."
    end

end
