class RenameStartColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :flights, :start, :takeoff
    rename_column :flights, :start_airport, :origin
    rename_column :flights, :end_airport, :destination
  end
end
