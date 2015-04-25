require 'rails_helper'

RSpec.describe Maps::DelatationMarker do
  let!(:delatation) { create(:delatation, longitude: -5.123456, latitude: -15.123456) }
  let(:all_delatations) { Delatation.all } 
  let(:marker) { Maps::DelatationMarker.new(all_delatations) }
  
  let(:json_markers) do
    [{:lat=>-15.123456, :lng=>-5.123456}]
  end 

  describe '#build_markers' do
    it 'returns markers with json format' do
      expect(marker.build_markers).to eq json_markers
    end
  end
end