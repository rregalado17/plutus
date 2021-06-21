class AdminsController < ApplicationController

    def index
        admnins = Admins.all 
        render json: admins
    end



end
