class UsersController < ApplicationController

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user.full_messages, status: 201
            # render json: @user.full_messages, status: :created
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def destroy
        @user = User.find(user_params[:id])

        @user.destroy
        render json: @user
    end

    def index
        @user = User.all
        render json: @user
    end

    def show
        @user = User.find(user_params[:id])
        render json: @user
    end

    def update
        @user = User.find(user_params[:id])

        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end
end