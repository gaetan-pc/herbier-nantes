class SpecimensController < ApplicationController
  def index
    if params[:q].present?
      @specimens = Specimen.search(params[:q])
    else
      @specimens = []
    end
  end

  def show
    @specimen = Specimen.find(params[:id])
  end

  def create
    
  end

  protected

  
end
