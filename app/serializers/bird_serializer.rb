class BirdSerializer
  include FastJsonapi::ObjectSerializer
  # we must always specify what attributes we want to include
  attributes :name, :species
  has_many :sightings
  has_many :locations, through: :sightings
end