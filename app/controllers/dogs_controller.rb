class DogsController < ApplicationController
    
    def index
        @dogs = Dog.all
        render json: @dogs
    end

    def show
        @dog = Dog.find(params[:id])
        render json: @dog
    end

    def create
        @dog = Dog.create(
            name: params[:name],
            breed: params[:breed],
            age: params[:age]
        )
        render json: @dog, status: :created
    end

    def update 
        @dog = Dog.find(params[:id])
        @dog.update(
            age: params[:age] 
        )
        render json: "Successfully updated"
    end

    def destroy 
        @dog = Dog.find(params[:id])
        @dog.destroy 
        render json: "Successfully deleted"
    end 

end
