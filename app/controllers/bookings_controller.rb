class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passengers = params[:passenger_count].to_i
    @booking = Booking.new
    @passengers.times { @booking.build_passenger }
  end

  def create
    @flight = Flight.find(params[:flight_id])
    @passenger_name = params.dig(:booking, :passenger_attributes, :name)
    @passenger_email = params.dig(:booking, :passenger_attributes, :email)
    @booking = @flight.bookings.new(booking_passenger_params)
    if @booking.save
      PassengerMailer.with(passenger_name: @passenger_name, passenger_email: @passenger_email, flight_id: @flight.id).ticket_email.deliver_later
      redirect_to root_url, notice: "Check your email for your purchase confirmation."
    else
      render :new
    end
  end


  private

  def booking_passenger_params
    params.require(:booking).permit(:flight, passenger_attributes: [:name, :email])
  end
end
