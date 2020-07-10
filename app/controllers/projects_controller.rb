class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
        @p = CategoryProject.find(params[:id])
    end 

    def new
        @project = Project.new
    end 

    def create
        @project = Project.create(project_params)

        if @project.save
            redirect_to project_path(@project)
          else
            render :new
        end
    end

    def edit
    end 

    def update
    end

    def destroy
    end

    private

    def project_params
        params.require(:project).permit(:name, :nonprofit_id)
    end
end
