class PassengerMailer < ApplicationMailer
  def ticket_email
    @passenger_name = params[:passenger_name]
    @passenger_email = params[:passenger_email]

    @flight = Flight.find(params[:flight_id])
    @origin = Airport.find(@flight.origin).code
    @destination = Airport.find(@flight.destination).code
    @takeoff = @flight.takeoff_date_formatted
    @duration = @flight.pretty_duration

    mail(to: @passenger_email, subject: "Ticket Confirmation")
  end
end
