class JewelriesController < ApplicationController
    def index 
        jewleries = Jewelry.all 
        render json: jewleries
    end 

    def show 
        jewelry = Jewelry.find(params[:id])
        render json: jewelry
    end 

    def create 
        jewelry = Jewelry.new(jewelry_params)
        if jewelry.save 
            render json: jewelry
        else 
            render json: {errors: jewelry.errors.full_messages}
        end 

    end 

    private 

    def jewelry_params
        params.require(:jewelry).permit(:name)
    end 
end
