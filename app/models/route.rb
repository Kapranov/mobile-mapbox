class Route < ActiveRecord::Base
  belongs_to :places
  belongs_to :coordinates

  validates_presence_of :place_id, :coordinate_id
end
