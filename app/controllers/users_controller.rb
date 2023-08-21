class UsersController < ApplicationController

  skip_before_action :check_session, only: [:index, :new, :create]
  
  def index
    # Logic
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # redirect_to root_path, notice: 'User successfully created!'
      session[:user_id] = @user.id
      redirect_to '/dashboard', notice: 'User successfully created!'
    else
      flash[:register_errors] = @user.errors.full_messages
      redirect_to '/'
      # render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end