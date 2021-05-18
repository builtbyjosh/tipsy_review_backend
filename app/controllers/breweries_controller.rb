class BreweriesController < ApplicationController
  def index
    breweries = Brewery.all
    render json: breweries.to_json(:include => [:reviews])
  end

  def show
    brewery = Brewery.find_by(id: params[:id])
    render json: brewery.to_json(:include => [:reviews])
  end
end
