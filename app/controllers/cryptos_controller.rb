class CryptosController < ApplicationController

    def index
        cryptos = Crypto.all 
        render json: crypto 
    end

    def show 
        player = Player.find(params[:id])
        render json: crypto 
    end

    def create 
        @admin = Admin.find_by_id(session[:admin_id])
        @crypto = Crypto.new(crypto_params.merger(admin_id: current_admin.id))
        if @crypto.save
            redirect_to crypto_path(@crypto)
        else
            render :new
    end

end
