class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :start_airport
      t.integer :end_airport
      t.datetime :start
      t.integer :flight_duration

      t.timestamps
    end
  end
end
