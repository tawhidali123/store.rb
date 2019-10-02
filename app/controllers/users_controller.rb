class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = find_me
        @items = @user.items
        @shops = @user.shops
        
    end

    def new
        @user = User.new
        
    end

    def create
        # byebug
        user = User.create(permission)
        redirect_to user_path(user)
    end

    def edit
        @user = find_me
    end

    def update
        find_me.update(permission)
        redirect_to user_path
    end

    def destroy
        user = find_me
        User.delete(user)
        redirect_to items_path
    end

    private

    def find_me
        User.find(params[:id])
    end

    def permission
        params.require(:user).permit(:name, :address, :preference, :gender)
    end



end
