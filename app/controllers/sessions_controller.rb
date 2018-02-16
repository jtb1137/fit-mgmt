class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render 'login'
        end
    end

    def destroy
        session[:user_id].destroy
        redirect_to 'login'
    end
end
