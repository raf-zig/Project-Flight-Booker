class AddDetailsToBookings < ActiveRecord::Migration[7.0]
  def change
    change_table :bookings do |t|
      t.rename :passenger_id, :passenger_num
    end
  end
end
