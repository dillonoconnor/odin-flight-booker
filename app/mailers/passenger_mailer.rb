class PassengerMailer < ApplicationMailer
  def ticket_email
    @passenger = Passenger.find_by(email: params[:email])
    @email = params[:email]
    @flight = Flight.find(params[:flight_id])
    @origin = Airport.find(@flight.origin).code
    @destination = Airport.find(@flight.destination).code
    @takeoff = @flight.takeoff_date_formatted
    @duration = @flight.pretty_duration
    mail(to: @email, subject: "Ticket Confirmation")
  end
end
