class HaikusController < ApplicationController
    def rules
        @title = "Changed the title!"
    end
    
    def index
        @haikus = Haiku.all
    end
    
    def show
        @haiku = Haiku.find(params[:id])
    end
    
    def edit
        @haiku = Haiku.find(params[:id])
    end
    
    def update
    end
    
    def home
    end
    
    def new
    end
end
