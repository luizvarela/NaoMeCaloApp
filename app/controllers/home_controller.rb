class HomeController < ApplicationController
  def index
    @delatation = Delatation.new
    @delatations = Delatation.all
    @delatations_markers = Maps::DelatationMarker.new(@delatations).build_markers
  end
end
