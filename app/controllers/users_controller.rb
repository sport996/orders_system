class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit destroy ]

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created, location: @shop
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def index
        if (current_user).role.upcase == "ADMIN"
            @users = User.all.order(:id)

            render json: @users
        else 
            render json: { message: "Not Authorized" }    
        end
    end

    def edit
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def show
        render json: @user
    end

    def destroy
        @user.destroy
    end

    private
    def set_user
        @user = user.find(params[:id])
    end

    def user_params
        params.require(:user)
        .permit(:email, :username, :role)
    end
end
