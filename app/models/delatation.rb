class Delatation < ActiveRecord::Base
  validates_presence_of :category, :address, :date,
    :shift, :description, :longitude, :latitude
end
