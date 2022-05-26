class Public::CartItemsController < ApplicationController
    
    def index
        @cart_items = CartItem.all
        @total = "total"
        
    end
    
    def destroy_all
        CartItem.destroy_all
        redirect_to public_cart_items_path
    end
    
    def destroy
        @cart_item = CartItem.find(params[:id])
        @cart_item.destroy
        redirect_to public_cart_items_path
    end
    
    def create
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.save
        redirect_to public_cart_items_path
    end
    
    private
  
    def cart_item_params
        params.require(:cart_item).permit(:quantity, :item_id)
    end
end
