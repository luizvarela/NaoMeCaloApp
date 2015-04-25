class Maps::DelatationMarker
  def initialize(delatations)
    @delatations = delatations
  end

  def build_markers
    Gmaps4rails.build_markers(@delatations) do |delatation, marker|
      marker.lat delatation.latitude
      marker.lng delatation.longitude
    end
  end
end