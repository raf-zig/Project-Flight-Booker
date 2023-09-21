class BookingsController < ApplicationController
  def new
    @number_of_passengers = params[:num_pass]
    @selected_flight = params[:id]
    @book = Booking.new(flight_id: @selected_flight, passenger_num: @number_of_passengers)
    @number_of_passengers.to_i.times { @book.passengers.build }
  end

  def create
    @book = Booking.new(book_params)
    if @book.save
      redirect_to @book
    end
  end

  def show
    @book = Booking.find(params[:id])
  end

  private
  def book_params
    params.require(:booking).permit(:flight_id, :passenger_num, passengers_attributes: [:name, :email])
  end
end
