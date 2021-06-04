class FlightsController < ApplicationController
  def index
    @flight_dates = Flight.all.map { |f| f.takeoff }
  end
end
