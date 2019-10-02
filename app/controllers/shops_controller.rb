class ShopsController < ApplicationController
    
    def index 
       
        @shops = Shop.all
    end

    def show
        @shop = Shop.find(params[:id])
    end
    
    
    def new
        @shop = Shop.new
        # @items = Item.all
        # @users = User.all
    end

    def create
        shop = Shop.create(params.require(:shop).permit(:user_id, :item_id))
        # byebug
        redirect_to user_path(shop.user_id)
        
    end

    def edit
    end

    def update
    end

    def destroy
        shop = Shop.find(params[:id])
        Shop.delete(shop)
        redirect_to new_shop_path
    end



end
