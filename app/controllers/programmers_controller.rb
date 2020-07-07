class ProgrammersController < ApplicationController

    def index
        @programmers = Programmer.all
    end

    def show
        @programmer = Programmer.find(params[:id])
    end 

    def new
        
    end 

    def create
    end

    def edit
    end 

    def update
    end

    def destroy
    end
    
end
