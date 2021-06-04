class FlightsController < ApplicationController
  def index
    if params[:commit]
      @flights = Flight.where(
        origin: params[:departure_id],
        destination: params[:arrival_id]
      )
    end
  end
end
