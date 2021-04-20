class UserAddressesController < ApplicationController

    def index 
        @useradds = Useradd.all
        render json: @useradds(useradd_params)
    end

    def show
        @useradd = Useradd.find_by_id(params[:id])
    end

    def create 
        @useradd = Useradd.create(useradd_params)
        @useradds.save
        render json: @useradd, except:[:created_at, :updated_at]
    end

    def update 
        @useradd = Useradd.find_by_id(params[:id]).update
        render json: @useradd
    end

    def destroy
        @useradd = Useradd.find_by_id(prams[:id]).destroy
        render json: @useradds
    end


    private

    def useradd_params
        params.require(:useradds, :user_id, :user_address_id).permit(:other_useraddress_details)
    end

end
