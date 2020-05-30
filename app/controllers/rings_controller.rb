class RingsController < ApplicationController
    def index 
        rings = Ring.all 
        render json: rings
    end 

    def show 
        ring = Ring.find(params[:id])
        render json: ring
    end 

    def create 
        ring = Ring.new(ring_params)
        if ring.save 
            render json: ring
        else 
            render json: {errors: ring.errors.full_messages}
        end 

    end 

    def edit 
        ring = Ring.find(params[:id])
        render json: ring
    end 

    def update 
        ring = Ring.find(params[:id])
        ring.update(ring_params)
        render json: ring
    end 

    def destroy 
        ring = Ring.find(params[:id])
        ring.destroy
    end 
    

    private 

    def ring_params
        params.require(:ring).permit(:ic, :gender, :age, :metal, :name, :price, :retail_price, :color, :details, :sale, :sizes, :length, :gold_carat, :jewelry_id)
    end 
end
