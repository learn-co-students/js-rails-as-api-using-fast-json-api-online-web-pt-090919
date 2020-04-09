class SightingSerializer
  include FastJsonapi::ObjectSerializer
  # attributes :created_at, :bird, :location
  # use attributes to access related objects
  # adding them alongside normal object attributes
  attributes :created_at
  belongs_to :bird
  belongs_to :location
end
