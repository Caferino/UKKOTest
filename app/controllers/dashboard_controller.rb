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

    def load_content
      case params[:content_type]
      when 'store_cards'
        @stores = Store.all
        render partial: 'dashboard/store_card', collection: @stores, as: :store
      else
        render status: :not_found
      end
    end
      
end
