class WorksController < ApplicationController
  
  def index
    @association = Work.all 
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to projects_path, notice: 'Persona removida con exito.'
  end
end
