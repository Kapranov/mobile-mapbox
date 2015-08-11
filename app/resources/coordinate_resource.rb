class CoordinateResource < JSONAPI::Resource
  attributes :lat, :lon
  has_many :routes
end

