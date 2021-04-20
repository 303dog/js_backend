class UserController < ApplicationController

    def index
        @users = User.all
        render json: @users(user_params)
    end

    def show
        @user = User.find_by_id(params[:id])
    end

    def create 
        @user = User.create(user_params)
        @users.save
        render json: @user, except:[:created_at, :updated_at]
    end

    def update 
        @user = User.find_by_id(params[:id]).update
        render json: @user
    end

    def destroy
        @user = User.find_by_id(prams[:id]).destroy
        render json: @users
    end


    private

    def user_params
        params.require(:users, :first_name, :last_name, :user_email, :user_phone).permit(:user_other)
    end

end