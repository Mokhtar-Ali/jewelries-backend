class PendentsController < ApplicationController
    def index 
        pendents = Pendent.all 
        render json: pendents
    end 

    def show 
        pendent = Pendent.find(params[:id])
        render json: pendent
    end 

    def create 
        pendent = Pendent.new(pendent_params)
        if pendent.save 
            render json: pendent
        else 
            render json: {errors: pendent.errors.full_messages}
        end 

    end 

    def edit 
        pendent = Pendent.find(params[:id])
        render json: pendent
    end 

    def update 
        pendent = Pendent.find(params[:id])
        pendent.update(pendent_params)
        render json: pendent
    end 

    def destroy 
        pendent = Pendent.find(params[:id])
        pendent.destroy
    end 
    

    private 

    def pendent_params
        params.require(:pendent).permit(:ic, :gender, :age, :metal, :name, :price, :retail_price, :color, :details, :sale, :sizes, :gold_carat, :jewelry_id)
    end 
end
