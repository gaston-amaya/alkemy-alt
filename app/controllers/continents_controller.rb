class ContinentsController < ApplicationController
    before_action :current_continent, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!


    def index 
        @continents = Continent.all
        render json: @continents 
     end
     
     def show
         
         render json: @continent, serializer: ContinentDetailSerializer
     end
 
     def new
         @continent = Continent.new
 
     end
 
     def create
         continent = Continent.create(continent_params)
 
         redirect_to continents_path
 
     end
 
     def edit
         
     end
 
     def update
     
         
 
         @continent.update(continent_params)
     
     end
 
     def destroy
         
         
         @continent.destroy
     
     end
 
     private  
 
     def continent_params
         params.require(:continent).permit(:picture, :denomination)
     end

     def current_continent
        @continent = Continent.find(params[:id])
     end

end
