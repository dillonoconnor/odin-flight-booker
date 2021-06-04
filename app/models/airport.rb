class Airport < ApplicationRecord
  has_many :departures, class_name: "Flight", foreign_key: :origin
  has_many :arrivals, class_name: "Flight", foreign_key: :destination
end
