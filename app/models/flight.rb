class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :origin
  belongs_to :to_airport, class_name: "Airport", foreign_key: :destination
  has_many :bookings
  has_many :passengers, through: :bookings

  def takeoff_date_formatted
    takeoff.strftime("%b %d at  %l:%M")
  end

  def pretty_duration
    hours, minutes = flight_duration.divmod(60)
    "#{hours} hours #{minutes} minutes"
  end
end
