class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map{ |u| [u.code, u.id]}
    @flights = Flight.all.map{ |u| [u.departure_date, u.departure_date] }
    @available_flights = Flight.where("departure_airport_id = ? AND arrival_airport_id = ? AND  departure_date = ?",
    params[:departure_airport_id], params[:arrival_airport_id], params[:departure_date])
  end
end
