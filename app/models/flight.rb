class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :origin
  belongs_to :to_airport, class_name: "Airport", foreign_key: :destination

  def takeoff_date_formatted
    takeoff.strftime("%b %d - %l:%M")
  end
end
