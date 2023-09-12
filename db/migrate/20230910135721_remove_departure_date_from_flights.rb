class RemoveDepartureDateFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_date, :date
  end
end
