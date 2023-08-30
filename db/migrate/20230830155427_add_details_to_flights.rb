class AddDetailsToFlights < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.rename :depature_airport_id, :departure_airport_id
    end
  end
end
