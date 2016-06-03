class SpecimensController < ApplicationController
  def index
    @specimens = Specimen.page(1).per(25)
  end

  def show
    @specimen = Specimen.find(params[:id])
  end

  def create
    
  end

  protected

  
end
