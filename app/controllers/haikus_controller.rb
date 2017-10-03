class HaikusController < ApplicationController
    def rules
        @title = "The Rules of a Haiku"
    end
    
    def index
        @haikus = ["An example haiku loaded from the database", "Another poem"]
    end
    
    def show
        @haiko = Haiku.find(params[:id])
    end
    
    def edit
        @haiku = {
          haiku: "This ia a haiku loaded from the database.",
          id: params[:id]
      }
    end
    
    def home
    end
    
    def new
    end
end
