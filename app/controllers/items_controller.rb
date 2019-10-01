class ItemsController < ApplicationController

    def index
        @items = Item.all
    end

    def show
        @item = find_me
        # @user = User.find()
    end

    def new
        @item = Item.new
        
    end

    def create
        # byebug
        item = Item.create(permission)
        redirect_to item_path(item)
    end

    def edit
        @item = find_me
    end

    def update
        find_me.update(permission)
        redirect_to item_path
    end

    def destroy
        item = find_me
        Item.delete(item)
        redirect_to items_path
    end

    private

    def find_me
        Item.find(params[:id])
    end

    # def find_user
        
    # end

    def permission
        params.require(:item).permit(:name, :category, :description, :image)
    end

end
