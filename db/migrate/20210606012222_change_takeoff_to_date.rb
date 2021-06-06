class ChangeTakeoffToDate < ActiveRecord::Migration[6.1]
  def change
    change_column :flights, :takeoff, :date
  end
end
