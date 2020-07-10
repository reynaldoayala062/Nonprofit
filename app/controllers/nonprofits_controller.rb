class NonprofitsController < ApplicationController

    before_action :find_nonprofit, only:[:show, :edit, :update, :destroy]

    def index
        @nonprofits = Nonprofit.all
    end

    def show
    end 

    def new
        @nonprofit = Nonprofit.new
    end 

    def create
        @nonprofit = Nonprofit.create(nonprofit_params)

        if @nonprofit.save
            redirect_to nonprofit_path(@nonprofit)
          else
            render :new
        end
    end

    def edit 
    end 

    def update
        @nonprofit.update(nonprofit_params)
        redirect_to nonprofit_path(@nonprofit)
    end

    def destroy
        @nonprofit.destroy
        redirect_to nonprofits_path
    end

    def find_nonprofit
        @nonprofit = Nonprofit.find(params[:id])
    end
    
    private 

    def nonprofit_params
        params.require(:nonprofit).permit(:name, :email, :phone, :address, :category)
    end
    
end
