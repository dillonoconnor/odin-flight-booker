class FlightsController < ApplicationController
  def index
    @flights = Flight.where(flight_params) unless flight_params.empty?
  end

  private

  def flight_params
    params.permit(:origin, :destination, :takeoff)
  end
end
