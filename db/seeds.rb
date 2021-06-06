VA_AIRPORT_CODES = %w(IAD PHF ORF RIC ROA)

VA_AIRPORT_CODES.each do |code|
  Airport.create!(code: code)
end

10.times do
  Flight.create!(
    origin: rand(1..3),
    destination: rand(4..5),
    takeoff: rand(Date.today..(Date.today + 1.month)),
    flight_duration: rand(55..188)
  )
end
