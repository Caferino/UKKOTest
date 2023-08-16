class DashboardController < ApplicationController
    
  def index
    @current_user = User.find(session[:user_id])
    @stores = Store.all
    @books = Book.all
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

  def load_content_vanilla
    render partial: 'dashboard/store_card', collection: @stores, as: :store
  end
      
end
