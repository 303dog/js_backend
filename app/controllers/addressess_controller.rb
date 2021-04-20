class AddressesController < ApplicationController

    def index 
        @addresses = Address.all
        render json: @addresses(address_params)
    end

    def show
        @address = Address.find_by_id(params[:id])
    end

    def create 
        @address = Address.create(address_params)
        @addresses.save
        render json: @address, except:[:created_at, :updated_at]
    end

    def update 
        @address = Address.find_by_id(params[:id]).update
        render json: @address
    end

    def destroy
        @address = Address.find_by_id(prams[:id]).destroy
        render json: @addresses
    end


    private

    def address_params
        params.require(:addresses, :line_1 , :city , :zip_code , :state , :country , :other_address_details).permit(:line_2 , :line3 )
    end

end