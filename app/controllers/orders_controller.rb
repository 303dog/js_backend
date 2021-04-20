class OrdersController < ApplicationController

    def index 
        @orders = Order.all
        render json: @orders
    end

    def show 
        @order = Order.find_by_id(params[:id])
    end

    def create 
        @order = Order.create(order_params)
        render json: @order
    end


    def destroy
        @order = Order.find_by_id(params[:id]).destroy
        render json: @orders
    end

private

    def order_params
        params.require(:order).permit(:user_id, :product, :product_id, :trans_Date, :trans_Total, :productQty)
    end


end
