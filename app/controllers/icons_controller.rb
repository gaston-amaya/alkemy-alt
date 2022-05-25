class IconsController < ApplicationController
    before_action :current_icon, only: [:show, :edit, :update, :destroy]
    
    before_action :authenticate_user!

    
    def index 
        @icons = Icon.all
        render json: @icons
    end
    
    def show 
       
        render json: @icons, serializer: IconDetailSerializer
        
    end

    def new

        @icons = Icon.new

    end

    def create

        icons = Icon.create(icons_params)

        redirect_to = icons_path

    end

   
    def edit

        

    end

    def update

        

        @icon.update(icons_params)


    end

    def destroy

        
        @icon.destroy

    end

    private  

    def icons_params
        params.require(:icon).permit(:picture, :denomination, :height, :story, :city_id)
    end

    def current_icon
        @icon = Icon.find(params[:id])
    end

end
