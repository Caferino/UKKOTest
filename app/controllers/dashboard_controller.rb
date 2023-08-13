class DashboardController < ApplicationController
    
    def index
        if session[:user_id]
          begin
            @current_user = User.find(session[:user_id])
            @stores = Store.all
            @books = Book.all
          rescue ActiveRecord::RecordNotFound
            redirect_to root_path, alert: "Your session has expired. Please log in again."
          end
        else
          redirect_to root_path, alert: "Please log in."
        end
      end
      
end
