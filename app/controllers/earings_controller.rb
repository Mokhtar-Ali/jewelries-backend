class EaringsController < ApplicationController
    def index 
        earings = Earing.all 
        render json: earings
    end 

    def show 
        earing = Earing.find(params[:id])
        render json: earing
    end 

    def create 
        earing = Earing.new(earing_params)
        if earing.save 
            render json: earing
        else 
            render json: {errors: earing.errors.full_messages}
        end 

    end 

    def edit 
        earing = Earing.find(params[:id])
        render json: earing
    end 

    def update 
        earing = Earing.find(params[:id])
        earing.update(earing_params)
        render json: earing
    end 

    def destroy 
        earing = Earing.find(params[:id])
        earing.destroy
    end 
    

    private 

    def earing_params
        params.require(:earing).permit(:ic, :gender, :age, :metal, :name, :price, :retail_price, :color, :details, :sale, :sizes, :length, :gold_carat, :jewelry_id)
    end 
end
