class PassengerMailerPreview < ActionMailer::Preview
  def ticket_email
    PassengerMailer.with(
      email: Passenger.first.email,
      flight_id: Flight.first.id
    ).ticket_email
  end
end
