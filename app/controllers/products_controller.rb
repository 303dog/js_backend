class ProductController < ApplicationController

    def index 
        @products = Product.all
        render json: @products(product_params)
    end

    def show
        @product = Product.find_by_id(params[:id])
    end

    def create 
        @product = Product.create(product_params)
        @products.save
        render json: @product, except:[:created_at, :updated_at]
    end

    def update 
        @product = Product.find_by_id(params[:id]).update
        render json: @product
    end

    def destroy
        @product = Product.find_by_id(prams[:id]).destroy
        render json: @products
    end


    private

    def product_params
        params.require(:products, :product_id).permit(:price, :size, :about, :other_product_details)
    end

end
