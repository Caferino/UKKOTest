class SessionsController < ApplicationController

    def create
        @user = User.find_by(email:login_params[:email])
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            redirect_to '/dashboard'
        else
            # Sin dar pistas de dónde se equivocó, para evitar un posible ataque
            flash[:login_errors] = ['Invalid credentials']
            redirect_to '/'
        end
    end

    private
        def login_params
            # En base a los inputs types names establecidos en /users/index.html.erb
            params.require(:login).permit(:email, :password)
        end

end
