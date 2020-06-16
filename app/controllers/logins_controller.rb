class LoginsController < ApplicationController
    def create
        @user = User.find_by(username: params[:username])

        if @user
            render json: @user
        else
            render json: { status: 401, message: "Username not found, please register" }
        end
    end
end