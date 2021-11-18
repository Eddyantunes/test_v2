class UsersController < ApplicationController
        def index
            @users = User.all 
            render json: @users
        end 
    
        def show
            @user = User.find(params[:id])
            render json: @user
        end 
    
        def create
            @user = User.create(
                user_name: params[:user_name],
                user_lastname: params[:user_lastname],
                user_mail: params[:user_mail],
                user_notificationPreference: params[:user_notificationPreference]
            )
            render json: @user
        end 
    
        def update
            @user = User.find(params[:id])
            @user.update(
                user_name: params[:user_name],
                user_lastname: params[:user_lastname],
                user_mail: params[:user_mail],
                user_notificationPreference: params[:user_notificationPreference]
            )
            render json: @user
        end 
    
        def destroy
            @users = User.all 
            @user = User.find(params[:id])
            @user.destroy
            render json: @users
        end 
end
