class ChainsController < ApplicationController
    def index 
        chains = Chain.all 
        render json: chains
    end 

    def show 
        chain = Chain.find(params[:id])
        render json: chain
    end 

    def create 
        chain = Chain.new(chain_params)
        if chain.save 
            render json: chain
        else 
            render json: {errors: chain.errors.full_messages}
        end 

    end 

    def edit 
        chain = Chain.find(params[:id])
        render json: chain
    end 

    def update 
        chain = Chain.find(params[:id])
        chain.update(chain_params)
        render json: chain
    end 

    def destroy 
        chain = Chain.find(params[:id])
        chain.destroy
    end 
    

    private 

    def chain_params
        params.require(:chain).permit(:ic, :gender, :age, :metal, :name, :price, :retail_price, :color, :details, :sale, :sizes, :length, :jewelry_id)
    end 
end
