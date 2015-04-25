class Delatation < ActiveRecord::Base
  validates_presence_of :category, :address, :occurrence_date,
    :shift, :description, :longitude, :latitude
end
