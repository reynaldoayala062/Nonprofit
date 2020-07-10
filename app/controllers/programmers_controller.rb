class ProgrammersController < ApplicationController
    before_action :find_programmer, only:[:show, :edit, :update, :destroy]

    def index
        @programmers = Programmer.all
    end

    def show
    end 

    def new
        @programmer = Programmer.new
    end 

    def create
        @programmer = Programmer.create(programmer_params)

        if @programmer.save
            redirect_to programmer_path(@programmer)
          else
            render :new
        end
    end

    def edit
    end 

    def update
        @programmer.update(programmer_params)
        redirect_to programmer_path(@programmer)
    end

    def destroy
        @programmer.destroy
        redirect_to programmers_path
    end

    def find_programmer
        @programmer = Programmer.find(params[:id])
    end

    private 

    def programmer_params
        params.require(:programmer).permit(:name, :email, :phone)
    end
    
end
