class PlaceResource < JSONAPI::Resource
  attributes :name, :lat, :lon
  has_many :routes
end
