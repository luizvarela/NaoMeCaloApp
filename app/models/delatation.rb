class Delatation < ActiveRecord::Base
  extend Enumerize

  geocoded_by :address
  after_validation :geocode 
  
  validates_presence_of :category, :address, :occurrence_date,
    :shift, :description

  enumerize :category, in: { business: 1, event: 2, street: 3 }
  enumerize :shift, in: { morning: 1, afternoon: 2, night: 3, evening: 4 }
end
