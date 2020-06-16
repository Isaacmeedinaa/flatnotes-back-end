class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new(first_name: params[:first_name], last_name: params[:last_name], username: params[:username])
        
        if @user.valid?
            @user.save
            render json: @user
        else
            render json: { status: 401, message: "Error registring user" }
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end
end
