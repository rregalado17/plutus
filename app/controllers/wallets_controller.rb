class WalletsController < ApplicationController
    def index
        wallets = Wallets.all 
        render json: wallet
    end

    def show 
        User = User.find(params[:id])
        render json: wallet
    end

    def create 
        @user = User.find_by_id(session[:admin_id])
        @wallet = Wallet.new(wallet_params.merger(user_id: current_user.id))
        if @wallet.save
            redirect_to wallet_path(@wallet)
        else
            render :new
    end
end
