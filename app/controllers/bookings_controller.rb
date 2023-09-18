class BookingsController < ApplicationController
  def new
    @number_of_passengers = params[:num_pass]
    @selected_flight = params[:id]
    @pas = Passenger.new
    @book = Booking.new
  end
end
