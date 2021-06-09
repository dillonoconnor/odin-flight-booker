class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
  end

  def create
    Passenger.create!(name: params[:booking][:name], email: params[:booking][:email])
    @email = params[:booking][:email]
    @flight_id = params[:booking][:flight]
    PassengerMailer.with(email: @email, flight_id: @flight_id).ticket_email.deliver_later
    redirect_to root_url, notice: "Check your email for your purchase confirmation."
  end
end
