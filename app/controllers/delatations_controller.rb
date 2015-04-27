class DelatationsController < ApplicationController
  def index
    @delatation = Delatation.new
    @delatations = Delatation.all
    @delatations_markers = Maps::DelatationMarker.new(@delatations).build_markers
  end

  def create
    @delatation = Delatation.new(delatation_params)
    if @delatation.save
      redirect_to root_path
    else
      render :index
    end
  end

  def delatation_params
    params.require(:delatation).permit(
      :category, :name, :address, :occurrence_date, :shift, :description)
  end
end