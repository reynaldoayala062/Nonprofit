class SessionsController < ApplicationController

    def index
    end

    def new
    end 

    def create
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])

            session[:user_id] = @user.id
            redirect_to projects_path
        else
            redirect_to login_path
        end

    end 

    def destroy
        User.find(session[:user_id]).destroy      
        session[:user_id] = nil         
        redirect_to root_path 
    end  


end
