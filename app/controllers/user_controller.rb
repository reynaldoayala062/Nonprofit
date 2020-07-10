class UserController < ApplicationController

    def new
        @user = User.new
        render 'signup'
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to projects_path
        else
            render :signup
        end

    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
