class RouteResource < JSONAPI::Resource
  has_one :place
  has_one :coordinate

  filter :place
  filter :coordinate
end
