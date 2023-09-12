class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map{ |u| [u.code, u.id]}
    @flights = Flight.all.map{ |u| [u.departure_time.strftime("%Y-%m-%d %H:%M:%S"), u.departure_time.strftime("%Y-%m-%d %H:%M:%S")] }
    @available_flights = Flight.where("departure_airport_id = ? AND arrival_airport_id = ? AND departure_time = ?",
    params[:departure_airport_id], params[:arrival_airport_id], params[:departure_time])

    @number_of_passengers = params[:number_of_passengers]
  end

  
end
 