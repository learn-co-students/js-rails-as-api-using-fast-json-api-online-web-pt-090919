class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :bird
  belongs_to :bird
  belongs_to :location
end
