class CitiesController < ApplicationController
    before_action :current_city, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user! 


    def index 
        @cities = City.all 
        render json: @cities
    end
    
    def show
        
        render json: @city, serializer: CityDetailSerializer
        
    end

    def new
        @city = City.new 
    end

    def create
        @city = City.create!(city_params)
        if @city.valid?
            @city.save
            flash[:notice] = 'The City has been added successfully!'
        redirect_to = cities_path
    else
        flash[:alert] = @city.errors.full_messages
        end

    end 

    def edit

        

    end

    def update
        @city.update!(city_params)
        if @city.valid?
            @city.save
            flash[:notice] = 'The City has been updated successfully!'
        redirect_to = cities_path
    else
        flash[:alert] = @city.errors.full_messages
        end


    end

    def destroy
        @city.destroy
        flash[:notice] = 'The character has been deleted successfully!'

    end

    private  

    def city_params
        params.require(:city).permit(:picture, :denomination, :land_size, :population, :continent_id)
    end

    def current_city
        @city = City.find(params[:id])
    end
end

