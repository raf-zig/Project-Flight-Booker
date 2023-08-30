class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.time :departure_time
      t.date :departure_date
      t.integer :duration
      t.integer :depature_airport_id
      t.integer :arrival_airport_id

      t.timestamps
    end
  end
end
