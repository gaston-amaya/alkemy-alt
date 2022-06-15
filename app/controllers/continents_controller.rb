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
         @continent = Continent.create!(continent_params)
         if @continent.valid?
            @continent.save
 
            flash[:notice] = 'The Continent has been added successfully!'
            redirect_to = continents_path
        else
            flash[:alert] = @continent.errors.full_messages
            end
     
    end
 
     def edit
         
     end
 
     def update
        @continent.update(continent_params)
        if @continent.valid?
            @continent.save
 
            flash[:notice] = 'The Continent has been updated successfully!'
            redirect_to = continents_path
        else
            flash[:alert] = @continent.errors.full_messages
            end
     
     end
 
     def destroy
         @continent.destroy
         flash[:notice] = 'The Continent has been deleted successfully!'
     
     end
 
     private  
 
     def continent_params
         params.require(:continent).permit(:picture, :denomination)
     end

     def current_continent
        @continent = Continent.find(params[:id])
     end

end
