class SessionsController < ApplicationController

    skip_before_action :check_session, only: [:create, :destroy]

    def create
        @user = User.find_by(email:login_params[:email])
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            redirect_to '/dashboard'
        else
            # Give no hints, for more security
            flash[:login_errors] = ['Invalid credentials']
            redirect_to '/'
        end
    end

    # Logout action
    def destroy
        # Destroy the user's session
        session.delete(:user_id)
        session[:user_id] = nil

        # Optionally, you can display a flash message
        flash[:notice] = 'Logged out successfully'

        # Redirect to the home page or another appropriate location
        redirect_to root_path
    end

    # Private variables
    private
        def login_params
            # En base a los inputs types names establecidos en /users/index.html.erb
            params.require(:login).permit(:email, :password)
        end

end
