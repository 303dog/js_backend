class UserPaymentController < ApplicationController

    def index 
        @user_payments = User_payment.all
        render json: @user_payments(user_payment_params)
    end

    def show
        @user_payment = User_payment.find_by_id(params[:id])
    end

    def create 
        @user_payment = User_payment.create(user_payment_params)
        @user_payments.save
        render json: @user_payment, except:[:created_at, :updated_at]
    end

    def update 
        @user_payment = User_payment.find_by_id(params[:id]).update
        render json: @user_payment
    end

    def destroy
        @user_payment = User_payment.find_by_id(prams[:id]).destroy
        render json: @user_payments
    end


    private

    def user_payment_params
        params.require(:user_payments, :user_id, :payment_method_code , :card_number).permit( :date_from , :date_to ,:other_user_payment_details)
    end

end
