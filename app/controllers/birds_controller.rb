class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: BirdSerializer.new(birds)
  end

  def show  
    bird = Bird.find_by(id: params[:id])
    options = {
      include: [:sightings, :locations]
    }
    render json: BirdSerializer.new(bird, options)
  end
end
