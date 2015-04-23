class HomeController < ApplicationController
  def index
    @delatations = Delatation.all
    @delatations_markers = Maps::DelatationMarker.new(@delatations).build_markers
  end
end
