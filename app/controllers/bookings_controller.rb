class BookingsController < ApplicationController
  def new
    @number_of_passengers = params[:num_pass]
    @selected_flight = params[:id]
    #@pas = Passenger.new
    @book = Booking.new
    @dep_time = Flight.find(@selected_flight).departure_time
    @dep_airport = Flight.find(@selected_flight).departure_airport_id
    @arr_airport = Flight.find(@selected_flight).arrival_airport_id
    @da = Airport.find(@dep_airport).code
    @aa = Airport.find(@arr_airport).code
  end

  def create

  end
end
